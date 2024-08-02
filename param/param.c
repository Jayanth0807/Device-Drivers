#include<linux/init.h>
#include<linux/module.h>
#include<linux/kernel.h>

MODULE_AUTHOR("jay");
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Param");

static char* charvar = "Good";
static int intvar = 19;

module_param(charvar,charp,S_IRUGO);               //the prototype of the function is module_param(name,type,prmission);
module_param(intvar,int,S_IRUGO);


static int start(void)
{
	printk(KERN_ALERT "\n we are in the init function \n");
	printk(KERN_ALERT "\n the value of charvar is %s\n",charvar);
	return 0;
}

static void end(void)
{
	printk(KERN_ALERT "\n we are in the end function \n");
	printk(KERN_ALERT "\n the value of intvar is %d\n",intvar);
}


module_init(start);
module_exit(end);
