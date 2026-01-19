#include<linux/kernel.h>
#include<linux/platform_device.h>
#include<linux/device.h>
#include<linux/fs.h>
#include<linux/uaccess.h>
#include "platform.h"
#include<linux/cdev.h>
#include<linux/slab.h>

/*device private data structure */
struct pcdev_private_data
{
	struct pcdev_platform_data pdata;
	char *buffer;
	dev_t dev_num;
	struct cdev my_cdev;
};

/*driver private data structure */
struct pcdrv_private_data
{
	int total_devices;
	dev_t device_num_base;
	struct class *class_pcd;
	struct device *device_pcd;
};

struct pcdrv_private_data pcdrv_data;

static int check_permission(int dev_perm, int acc_mode)
{
	if(dev_perm == RDWR)
		return 0;
	if((dev_perm == RDONLY) && ((acc_mode & FMODE_READ) && !(acc_mode & FMODE_WRITE)))
		return 0;
	if((dev_perm ==WRONLY) && ((acc_mode & FMODE_WRITE) && !(acc_mode & FMODE_READ)))
		return 0;
	return -EPERM;

}

static int pcd_open(struct inode *inode, struct file *filp)
{
	return 0;
}
static ssize_t pcd_read(struct file *filp, char __user *buff, size_t count, loff_t *f_pos)
{
	return 0;

}
static ssize_t pcd_write(struct file *filp, const char __user *buff, size_t count, loff_t *f_pos)
{
	return -ENOMEM;
}
static loff_t pcd_lseek(struct file *filp, loff_t offset, int whence)
{
	return 0;

}
static int pcd_release(struct inode *inode, struct file *filp)
{
	pr_err("release was successful]n");
	return 0;
}

/*file operations of the driver */
struct file_operations fops = {

	.open = pcd_open,
	.release = pcd_release,
	.read = pcd_read,
	.write = pcd_write,
	.llseek = pcd_lseek,
	.owner = THIS_MODULE
};

static int pcd_platform_driver_probe(struct platform_device *pdev)
{
	int ret;
	struct pcdev_private_data *dev_data;
	struct pcdev_platform_data *pdata;

	pr_info("A device is detected \n");
	/*1. Get the platform data */
	pdata = (struct pcdev_platform_data *)dev_get_platdata(&pdev->dev);
	if(!pdata)
	{
		pr_err("No data available \n");
		ret = -EINVAL;
		goto out;
	}

	/*2. Dynamically allocate memory for the device private data */
	dev_data = kzalloc(sizeof(*dev_data),GFP_KERNEL);
	if(!dev_data)
	{
		pr_info("cannot allocate memory\n");
		return -ENOMEM;
		goto out;
	}
	dev_data->pdata.size = pdata->size;
	dev_data->pdata.perm = pdata->perm;
	dev_data->pdata.serial_number = pdata->serial_number;

	pr_info("device serial number =%s\n",dev_data->pdata.serial_number);
	pr_info("Device size = %d\n",dev_data->pdata.size);
	pr_info("Device Permission = %d\n", dev_data->pdata.perm);
	
	/*save the device private data pointer in platform device structure */
	dev_set_drvdata(&pdev->dev,dev_data);
	/*3.Dynamically allocate memory for the device buffer using size information from the platform data */
	dev_data->buffer = kzalloc(dev_data->pdata.size,GFP_KERNEL);
        if(!dev_data)
        {
                pr_info("cannot allocate memory\n");
                return -ENOMEM;
                goto dev_data_free;
        }

	/*4. Get the device number */
	dev_data->dev_num = pcdrv_data.device_num_base + pdev->id;
	/*5. Do the Cdev init and cdev add */
	cdev_init(&dev_data->my_cdev,&fops);
	dev_data->my_cdev.owner = THIS_MODULE;
	ret = cdev_add(&dev_data->my_cdev,dev_data->dev_num,1);
	if(ret < 0)
	{
		pr_err("Device cannot be added\n");
		goto buffer_free;
	}
	/*6.Create device file for the detected platform device */
	pcdrv_data.device_pcd = device_create(pcdrv_data.class_pcd,NULL,dev_data->dev_num,NULL,"jaydev-%d",pdev->id);
	if(IS_ERR(pcdrv_data.device_pcd))
	{
		pr_err("device create failed \n");
		ret = PTR_ERR(pcdrv_data.device_pcd);
		goto cdev_del;
	}
	pcdrv_data.total_devices++;
	pr_err("The probe was successful finally.!\n");
	/*7.error handling*/

	return 0;
cdev_del:
	cdev_del(&dev_data->my_cdev);
buffer_free:
	kfree(dev_data->buffer);
dev_data_free:
	kfree(dev_data);
out:
	pr_info("Device probe failed\n");
	return ret;
}

static int pcd_platform_driver_remove(struct platform_device *pdev)
{

	struct pcdev_private_data *dev_data = dev_get_drvdata(&pdev->dev);
	/*1.Remove a device that was created with device_create() */
	device_destroy(pcdrv_data.class_pcd,dev_data->dev_num);

	/*2. Remove a cdev entry from the system */
	cdev_del(&dev_data->my_cdev);
	/*3. Free the memory held by the device */
	kfree(dev_data->buffer);
	kfree(dev_data);

	pcdrv_data.total_devices--;

	pr_err("device is removed\n");
	return 0;
}

struct platform_driver pcd_platform_driver = 
{
	.probe = pcd_platform_driver_probe,
	.remove = pcd_platform_driver_remove,
	.driver = {
		.name = "pseudo-char-jay-device"
	},
};

#define MAX_DEVICES 10

static int __init pcd_platform_driver_init(void)
{
	int ret;
	int i;
	/*1.Dynamically allocate device numbers */
	ret = alloc_chrdev_region(&pcdrv_data.device_num_base,0,MAX_DEVICES,"jaydevs");
	if(ret < 0)
	{
		pr_err("Alloc chrdev failed\n");
	}
	/*2. create device class under /sys/class */
	pcdrv_data.class_pcd = class_create("jay-class1");
	if(IS_ERR(pcdrv_data.class_pcd))
	{
		pr_err("Class creation failed\n");
		ret = PTR_ERR(pcdrv_data.class_pcd);
		unregister_chrdev_region(pcdrv_data.device_num_base,MAX_DEVICES);
		return ret;
	}
	/*3. Register a platform driver */
	platform_driver_register(&pcd_platform_driver);

	pr_err("platform driver loaded.!!\n");
	return 0;
}

static void __exit pcd_platform_driver_exit(void)
{
	/*1. Unregister the platform driver */
	platform_driver_unregister(&pcd_platform_driver);
	/*2. class destroy */
	class_destroy(pcdrv_data.class_pcd);
	/*3.unregister device numbers for MAX_DEVICES */
	unregister_chrdev_region(pcdrv_data.device_num_base,MAX_DEVICES);

	pr_err("platform driver unloded \n");
}

module_init(pcd_platform_driver_init);
module_exit(pcd_platform_driver_exit);

MODULE_AUTHOR("JAY");
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("A pseudo character platform driver which handles the platform devices");
