#include<linux/kernel.h>
#include<linux/init.h>
#include<linux/module.h>
#include<linux/kdev_t.h>
#include<linux/cdev.h>
#include<linux/device.h>
#include<linux/fs.h>
#include<linux/err.h>
#include<linux/types.h>
#include<linux/uaccess.h>

#define s 500

static struct cdev f_cdev;
static struct class *my_class;

dev_t dev=0;
char k_buff[1024]="what iam i doing";
char u_buff[s];

static int f_open(struct inode *inode,struct file *filp);
static int f_release(struct inode *inode,struct file *filp);
static ssize_t f_read(struct file *filp,char *buf,size_t len,loff_t *off);
static ssize_t f_write(struct file *filp,const char *buf,size_t len,loff_t *off);
static loff_t f_lseek(struct file *filp, loff_t pos, int whence);


static struct file_operations fops=
{
	.owner=THIS_MODULE,
	.open=f_open,
	.release=f_release,
	.read=f_read,
	.write=f_write,
	.llseek=f_lseek,
};

static int f_open(struct inode *inode,struct file *filp)
{
	printk("driver file opened");
	return 0;
}

static int f_release(struct inode *inode,struct file *filp)
{
	printk("Driver release");
	return 0;
}

static ssize_t f_read(struct file *filp,char *buf,size_t len,loff_t *off)
{
	int byte;
	byte = len -copy_to_user(buf,k_buff,len);
	//*off = *off+byte;
	printk("reading done\n");
	//printk("buff= %s\n, size= %lu\n, offset= %lld\n",buf,len,*off);
	return s;
}

static ssize_t f_write(struct file *filp,const char *buf,size_t len,loff_t *off)
{
	int byte;
	byte= len-copy_from_user(k_buff+ *off,buf,len);
	*off= *off+byte;
	

	printk("Writing done");
	//printk("buff= %s\n, size= %lu\n, offset= %lld\n",buf,len,*off);
	return byte;
}

static loff_t f_lseek(struct file *filp, loff_t off, int whence)
{
	printk(" lseek driver file opened");
	filp->f_pos=off;
	printk("offset value = %lld\n",off);
	printk("Driver closed");
	return off;
}


static int f_begin(void)
{
	printk("Entering the kerenl region");
	if(alloc_chrdev_region(&dev,0,1,"jaydriver")<0)
	{
		printk("Error in creating major and minor numbers");
	}
	else
		printk("Major=%d\n,Minor=%d\n",MAJOR(dev),MINOR(dev));
	my_class=class_create(THIS_MODULE->name);
	device_create(my_class,NULL,dev,NULL,"jay");
	cdev_init(&f_cdev,&fops);
	cdev_add(&f_cdev,dev,1);
	return 0;
}

static void f_end(void)
{
	unregister_chrdev_region(dev,1);
	class_destroy(my_class);
	device_destroy(my_class,dev);
	cdev_del(&f_cdev);
	printk("exiting from the kerenl");
}

module_init(f_begin);
module_exit(f_end);

MODULE_AUTHOR("JAY");
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("user to kernel");

