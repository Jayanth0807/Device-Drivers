#include<linux/kernel.h>
#include<linux/init.h>
#include<linux/module.h>


MODULE_AUTHOR("unday");
MODULE_LICENSE("GPL");

static int  uday_start(void)
{
	static int a=25;
	printk("Going inside the kernel\n");
	printk("The value of is %d\n",a);
	return 0;
}

static void  uday_end(void)
{
	printk("Good bye going back to the user sided\n");
}


module_init(uday_start);
module_exit(uday_end);

MODULE_DESCRIPTION("init");

