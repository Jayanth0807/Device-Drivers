#include<linux/kernel.h>
#include<linux/init.h>
#include<linux/module.h>
#include<linux/cdev.h>
#include<linux/device.h>
#include<linux/uaccess.h>
#include<linux/fs.h>
#include<linux/kdev_t.h>
#include<linux/types.h>
#include<linux/err.h>

dev_t dev=0;

static struct cdev f_cdev;

char k_buff[100]="Mirafra";


static int f_open(struct inode *inode,struct file *filp);
static int f_release(struct inode *inode,struct file *filp);
static ssize_t f_read(struct file *filp,char *buff,size_t len,loff_t *off);
static ssize_t f_write(struct file *filp,const char *buff,size_t len,loff_t *off);

static struct file_operations fops=
{
	.owner=THIS_MODULE,
	.open=f_open,
	.release=f_release,
	.read=f_read,
	.write=f_write,
};

static int f_open(struct inode *inode,struct file *filp)
{
	printk(KERN_INFO"Entering the kernel region \n");
	printk(KERN_INFO"File was opened \n");
	return 0;
}

static int f_release(struct inode *inode,struct file *filp)
{
	//printk(KERN_INFO"Entering the kernel region \n");
	printk(KERN_INFO"File was released \n");
	return 0;
}

static ssize_t f_read(struct file *filp,char *buff,size_t len,loff_t *off)
{
	int nbytes;
	//printk(KERN_INFO"Entering the kernel region \n");
	printk(KERN_INFO"File reading started \n");
	nbytes= len-copy_to_user(buff,k_buff+ *off,len);
	*off += nbytes;
	printk(KERN_INFO "reading from the user=%d,pos=%d\n",nbytes,(int)*off);
	return 0;
}

static ssize_t f_write(struct file *filp,const char *buff,size_t len,loff_t *off)
{
	int nbytes;
	//printk(KERN_INFO"Entering the kernel region \n");
	printk(KERN_INFO"File writing started \n");
	*off=0;
	nbytes= len-copy_from_user(k_buff+ *off,buff,len);
	*off += nbytes;
	printk(KERN_INFO "received from user=%s,of length=%d\n",k_buff,nbytes);
	return nbytes;
}


static int file_b(void)
{
	printk(KERN_INFO"Entering the kernel region");
	if(alloc_chrdev_region(&dev,0,1,"jay_1")<0)
	{
		printk("failed to create major and minor numbers");
	}
	printk("Major= %d Minor= %d\n",MAJOR(dev),MINOR(dev));
	cdev_init(&f_cdev,&fops);
	cdev_add(&f_cdev,dev,1);
	printk("device successfully inserted \n");
	return 0;
}

static void file_e(void)
{
	printk(KERN_INFO"Leaving the kernel \n");
	unregister_chrdev_region(dev,1);
	cdev_del(&f_cdev);
}

module_init(file_b);
module_exit(file_e);

MODULE_AUTHOR("jayanth");
MODULE_DESCRIPTION("file-operations");
MODULE_LICENSE("GPL");


