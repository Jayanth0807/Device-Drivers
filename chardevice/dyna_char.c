#include<linux/kernel.h>
#include<linux/init.h>
#include<linux/module.h>
#include<linux/fs.h>
#include<linux/kdev_t.h>
#include<linux/types.h>

MODULE_AUTHOR("JAY");
MODULE_LICENSE("GPL");

dev_t dev;

static int start(void)
{
	printk("Entering into the kernel\n");
	alloc_chrdev_region(&dev,0,1,"jaydrive");
	printk("Major number=%d\n Minor nummber=%d\n",MAJOR(dev),MINOR(dev));
	return 0;
}

static void end(void)
{
	printk("Good bye from kernel side");

}

module_init(start);
module_exit(end);
