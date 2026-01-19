#include<linux/module.h>
#include<linux/kernel.h>
#include<linux/init.h>

static int __init my_fun_init(void)
{
	pr_info("hello from the kernel side\n");
	printk("Hello from the kernel side again\n");
	return 0;

}

static void __exit my_fun_cleanup(void)
{
	pr_info("Goodbye from kernel side\n");
	printk("goodbye again\n");

}

module_init(my_fun_init);
module_exit(my_fun_cleanup);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("JAY");
MODULE_DESCRIPTION("A simple hello world kernel module");
MODULE_INFO(board, "beaglebone black");
