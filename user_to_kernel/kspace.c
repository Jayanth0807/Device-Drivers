#include<linux/kernel.h>
#include<linux/module.h>
#include<linux/init.h>
#include<linux/device.h>
#include<linux/cdev.h>
#include<linux/uaccess.h>
#include<linux/fs.h>
#include<linux/err.h>
#include<linux/kdev_t.h>
#include<linux/slab.h>


static struct cdev f_cdev;
dev_t dev=0;
uint8_t  k_char[1024]="jay from kernel side";
 

static int file_open(struct inode *inode, struct file *filp);
static int file_release(struct inode *inode, struct file *filp);
static ssize_t file_read(struct file *filp,char __user *buff,size_t len,loff_t *off);
static ssize_t file_write(struct file *filp,const char *buff,size_t len,loff_t *off);


static struct file_operations fo =
{
	.owner=THIS_MODULE,
	.open=file_open,
	.release=file_release,
	.read=file_read,
	.write=file_write,
};

static int file_open(struct inode *inode,struct file *filp)
{
	printk("the file was opened");
	return 0;
}

static int file_release(struct inode *inode,struct file *filp)
{
	printk("the file from kernel released");
	return 0;
}

static ssize_t file_read(struct file *filp,char __user *buff,size_t len,loff_t *off)
{
	printk("File opened for reading");
	if(copy_to_user(buff,k_char,1024))
	{
		printk("Error in reading the file");
		return -1;
	}
	else
		printk("\n Driver reading done");
	return 0;
}

static ssize_t file_write(struct file *filp,const char *buff,size_t len,loff_t *off)
{
	printk("file opened for writing");
	if(copy_from_user(k_char,buff,len))
	{
		printk("error in writing the file");
		return -1;
	}
	else
		printk("Writing done to the file");
	return len;
}

static int f_begin(void)
{
	printk("entering into the kernel");
	if(alloc_chrdev_region(&dev,0,1,"u2kdriver")<0)
	{
		printk("Error in creating in major and minor numbers");
		return -1;
	}
	else
	{
		printk("Major number=%d\n,Minor number=%d\n",MAJOR(dev),MINOR(dev));
	}
	cdev_init(&f_cdev,&fo);
	cdev_add(&f_cdev,dev,1);
	return 0;
	
}

static void f_end(void)
{
	printk("Leaving the kernel region");	
	unregister_chrdev_region(dev,1);
	cdev_del(&f_cdev);
}

module_init(f_begin);
module_exit(f_end);

MODULE_AUTHOR("JAY");
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("kernel_to_user");

