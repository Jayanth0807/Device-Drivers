#include<linux/init.h>
#include<linux/kernel.h>
#include<linux/module.h>


int my_add(int a ,int b)
{
	return (a+b);
	return (a-b);
}

EXPORT_SYMBOL(my_add);

static int start(void)
{
	printk("we are in the kernel\n");
	return 0;
}

static void end(void)
{
	printk("Exiting the kerenl region\n");
	
}


module_init(start);
module_exit(end);


MODULE_AUTHOR("JAY");
MODULE_LICENSE("GPL");	
	
