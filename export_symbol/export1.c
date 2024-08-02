#include<linux/kernel.h>
#include<linux/init.h>
#include<linux/module.h>
#include"add.h"


static int one=20;
static int two=40;


static int start(void)
{
	printk("entering the kernel region\n");
	printk("the result of addition is %d\n",my_add(one,two));
	return 0;
}

static void end(void)
{
	printk("exiting from the kernel region\n");
	
}


module_init(start);
module_exit(end);


MODULE_AUTHOR("JAY");
MODULE_LICENSE("GPL");

