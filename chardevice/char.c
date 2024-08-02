#include<linux/kernel.h>
#include<linux/init.h>
#include<linux/module.h>
#include<linux/kdev_t.h>
#include<linux/types.h>
#include<linux/fs.h>


MODULE_AUTHOR("JAY");
MODULE_LICENSE("GPL");

dev_t device=MKDEV(400,0);
static int start_begin(void)
{
	printk("entering into the kernel side\n");
	register_chrdev_region(device,1,"jay");
	printk("Major number= %d\n Minor number=%d\n",MAJOR(device),MINOR(device));
	return 0;
}

static void exit_end(void)
{
	printk("good bye from the kernel side\n");
}

module_init(start_begin);
module_exit(exit_end);


