#include<linux/kernel.h>
#include<linux/module.h>
#include<linux/init.h>
#include<linux/device.h>
#include<linux/fs.h>
#include<linux/types.h>
#include<linux/kdev_t.h>

dev_t dev=0;

struct class *dev_class;     //initailizing with structure class with a pointer


static int init_start(void)
{
	printk("Entering into the kernel region\n");
	alloc_chrdev_region(&dev,0,1,"driver");
	printk("Major number=%d\n Minor number=%d\n",MAJOR(dev),MINOR(dev));
	
	dev_class=class_create(THIS_MODULE,"class"); //creating the class 
	device_create(dev_class,NULL,dev,NULL,"jay_device");  //now creating the device
	
	return 0;
}

static void exit_end(void)
{
	printk("Going back from the kernel\n");
	unregister_chrdev_region(dev,1);
	device_destroy(dev_class,dev);
	class_destroy(dev_class);
}


module_init(init_start);
module_exit(exit_end);

MODULE_AUTHOR("nithya");
MODULE_LICENSE("GPL");

