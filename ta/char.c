#include <linux/module.h>
#include <linux/fs.h>
#include <linux/uaccess.h>
#include <linux/init.h>
#include <linux/cdev.h>
#include <linux/sched.h>
#include <linux/errno.h>
#include <asm/current.h>
#include <linux/device.h> //for class create and device_create

#include <linux/slab.h>


#define CHAR_DEV_NAME "pooji_dynamic_cdrv"
#define MAX_LENGTH 4000
#define SUCCESS 0

static char char_device_buf[MAX_LENGTH]="I LOVE KDRAMA";
struct cdev *pooji_cdev;
dev_t mydev;

static struct class *pooji_class;

int char_dev_open(struct inode *inode, struct file *file)
{
	printk(KERN_INFO "\nOpen operation invoked\n");
	return SUCCESS;
}

static int char_dev_release(struct inode *inode, struct file *file)
{
	printk(KERN_INFO "\nRelease driver invoked\n");
	return SUCCESS;
}

static loff_t char_dev_lseek(struct file *file, loff_t ppos, int whence)
{
	printk(KERN_INFO "\nlseek driver invoked\n");
	
	file->f_pos = ppos;
	printk(KERN_INFO "New Position: %lld\n", ppos);
	printk(KERN_INFO "lseek driver end\n");
	return ppos;
}

ssize_t char_dev_write(struct file *file, const char *buf, size_t lbuf, loff_t *ppos)
{
	int nbytes;
	printk(KERN_INFO "\nWrite driver invoked\n");

	nbytes = lbuf - copy_from_user(char_device_buf + *ppos, buf, lbuf);
	*ppos += nbytes;

	printk(KERN_INFO "Data Written to user: %s, Size: %lu, Offset: %lld\n", buf, lbuf, *ppos);
	printk(KERN_INFO "Write driver end\n");
	return nbytes;
}

ssize_t char_dev_read(struct file *file, char *buf, size_t lbuf, loff_t *ppos)
{
	int nbytes;
	printk(KERN_INFO "\nRead driver invoked\n");

	nbytes = lbuf - copy_to_user(buf, char_device_buf + *ppos, lbuf);
	*ppos += nbytes;

	printk(KERN_INFO "Data Read from user: %s, Size: %lu, Offset: %lld\n", buf, lbuf, *ppos);
	printk(KERN_INFO "Read driver end\n");
	return nbytes;
}


static struct file_operations char_dev_fops = {
	.owner = THIS_MODULE,
	.write = char_dev_write,
	.read = char_dev_read,
	.open = char_dev_open,
	.llseek = char_dev_lseek,
	.release = char_dev_release,
};

static int __init char_dev_init(void)
{
	int ret,count=1;

	if (alloc_chrdev_region (&mydev, 0, count, CHAR_DEV_NAME) < 0) {
		printk (KERN_ERR "failed to reserve major/minor range\n");
		return -1;
	}

	if (!(pooji_cdev = cdev_alloc ())) {
		printk (KERN_ERR "cdev_alloc() failed\n");
		unregister_chrdev_region (mydev, count);
		return -1;
	}
	cdev_init(pooji_cdev,&char_dev_fops);

	ret=cdev_add(pooji_cdev,mydev,count);
	if( ret < 0 ) {
		printk(KERN_INFO "Error registering device driver\n");
		cdev_del (pooji_cdev);
		unregister_chrdev_region (mydev, count);
		return -1;
	}

	pooji_class = class_create (THIS_MODULE->name);
	device_create (pooji_class, NULL, mydev, NULL, "%s", "pooji_dynamic_cdrv");

	printk(KERN_INFO"\nDevice Registered: %s\n",CHAR_DEV_NAME);
	printk (KERN_INFO "Major number = %d, Minor number = %d\n", MAJOR (mydev),MINOR (mydev));

	return 0;
}

static void __exit char_dev_exit(void)
{
	device_destroy (pooji_class, mydev);
	class_destroy (pooji_class);

	cdev_del(pooji_cdev);
	unregister_chrdev_region(mydev,1);
	printk(KERN_INFO "\n Driver unregistered \n");

}
module_init(char_dev_init);
module_exit(char_dev_exit);

MODULE_AUTHOR("mirafra");
MODULE_DESCRIPTION("Character Device Driver - Test");
MODULE_LICENSE("GPL");
