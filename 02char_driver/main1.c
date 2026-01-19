#include<linux/module.h>
#include<linux/kernel.h>
#include<linux/fs.h>
#include<linux/cdev.h>
#include<linux/device.h>
#include<linux/kdev_t.h>

#define DEV_MEM_SIZE 512

char device_buffer[DEV_MEM_SIZE];

dev_t device;
struct cdev my_cdev;
struct file_operations fops;

struct class *class_jay;
struct device *device_jay;


#define pr_fmt(fmt) "%s: " fmt,__func__

static int __init my_pcd_init(void)
{

	/*1.dynamically allocate a device number */
	alloc_chrdev_region(&device,0,1,"jay_devices");

	pr_info("Device Number <major>:<minor> = %d:%d\n",MAJOR(device),MINOR(device));
	/*2.Initialize the cdev structure with fops */
	cdev_init(&my_cdev,&fops);
	/*3.Register a device (cdev structure) with VFS */
	my_cdev.owner = THIS_MODULE;
	cdev_add(&my_cdev,device,1);
	/*4.create a device class under /sys/class/ */
	class_jay = class_create("jay_class");
	/*5.populate the sysfs with device information */
	device_jay = device_create(class_jay,NULL,device,NULL,"jay");

	pr_info("module initialization was successful \n");
	return 0;
}

static void __exit my_pcd_cleanup(void)
{
	device_destroy(class_jay, device);
	class_destroy(class_jay);
	cdev_del(&my_cdev);
	unregister_chrdev_region(device,1);
	pr_info("module deinitialized");

}


module_init(my_pcd_init);
module_exit(my_pcd_cleanup);


MODULE_AUTHOR("jay");
MODULE_DESCRIPTION("A character driver");
MODULE_LICENSE("GPL");

