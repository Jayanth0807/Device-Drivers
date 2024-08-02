#include <linux/module.h>
#include <linux/fs.h>
#include <asm/uaccess.h>
#include <linux/init.h>
#include <linux/cdev.h>
#include <linux/sched.h>
#include <linux/errno.h>
#include <asm/current.h>
#include <linux/device.h> //for class create and device_create
 
#include <linux/slab.h>
 
 
#define CHAR_DEV_NAME "jay_cdrv"
#define MAX_LENGTH 4000
#define SUCCESS 0
 
static char *char_device_buf;
struct cdev *sree_cdev;
dev_t mydev;
 
static struct class *sree_class;
 
static int char_dev_open(struct inode *inode, struct file  *file)
{
	printk(KERN_INFO "open operation invoked \n");
	return SUCCESS;
}
 
static int char_dev_release(struct inode *inode,struct file *file)
{
	printk(KERN_INFO "file released \n");
	return SUCCESS;
}
 
static ssize_t char_dev_write(struct file *file,const char *buf,size_t lbuf,loff_t *ppos)
{
	int nbytes; /* Number of bytes written */
 
	nbytes = lbuf - copy_from_user(buf, char_device_buf + *ppos,/* from */ lbuf ); /* how many bytes */
	*ppos += nbytes;
	printk(KERN_INFO "Rec'vd from App data %s of length %d \n",char_device_buf, nbytes);
	printk("data written to user %s\n size is=%lu offset=%lld",buf,lbuf,*ppos);
	return nbytes;
}
 
static ssize_t char_dev_read(struct file *file, char *buf, size_t lbuf, loff_t *ppos)
{
       int nbytes = lbuf - copy_to_user (buf, char_device_buf + *ppos, lbuf);
       *ppos += nbytes;
	printk (KERN_INFO "\n Reading nbytes=%d, pos=%d \n",nbytes, (int)*ppos);
	
	printk("data read to the user %s\n size is= %lu offset = %lld",buf,lbuf,*ppos);
 
       return nbytes;
 
}
 
 
static struct file_operations char_dev_fops = {
.owner = THIS_MODULE,
.write = char_dev_write,
.read = char_dev_read,
.open = char_dev_open,
.release = char_dev_release,
};
 
static __init int char_dev_init(void)
{
int ret,count=1;
 
if (alloc_chrdev_region (&mydev, 0, count, CHAR_DEV_NAME) < 0) 
	{  //register_chrdev_region(legacy)???..//1
            printk (KERN_ERR "failed to reserve major/minor range\n");
            return -1;
	}
 
        if (!(sree_cdev = cdev_alloc ())) 
        { //2
            printk (KERN_ERR "cdev_alloc() failed\n");
            unregister_chrdev_region (mydev, count);
            return -1;
	}
	cdev_init(sree_cdev,&char_dev_fops);//3
 
	ret=cdev_add(sree_cdev,mydev,count);//4
	if( ret < 0 ) 
	{
	printk(KERN_INFO "Error registering device driver\n");
        cdev_del (sree_cdev);
	unregister_chrdev_region (mydev, count);
	return -1;
	}
 
	sree_class = class_create (THIS_MODULE->name);//5 extra
        device_create (sree_class, NULL, mydev, NULL, "%s", "jay_cdrv");//6 extra
 
	printk(KERN_INFO"\nDevice Registered: %s\n",CHAR_DEV_NAME);
	printk (KERN_INFO "Major number = %d, Minor number = %d\n", MAJOR (mydev),MINOR (mydev));
 
	char_device_buf =(char *)kmalloc(MAX_LENGTH,GFP_KERNEL);
	return 0;
}
 
static __exit void  char_dev_exit(void)
{
	device_destroy (sree_class, mydev);//for dynamic//9  extra
	class_destroy (sree_class);//10  extra
 
 
	cdev_del(sree_cdev);//7
	unregister_chrdev_region(mydev,1);//8
	kfree(char_device_buf);
	printk(KERN_INFO "\n Driver unregistered \n");
 
}
module_init(char_dev_init);
module_exit(char_dev_exit);
 
MODULE_AUTHOR("Sree Embedded");
MODULE_DESCRIPTION("Character Device Driver - Test");
MODULE_LICENSE("GPL");
