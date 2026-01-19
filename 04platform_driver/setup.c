#include<linux/module.h>
#include<linux/platform_device.h>
#include<linux/kernel.h>
#include<linux/device.h>
#include<linux/init.h>
#include "platform.h"

//1.create 2 platform devices

//2.create a platform data

struct pcdev_platform_data pcdev_data[2] = {
	[0] = {.size = 512, .perm = RDWR, .serial_number = "PCDEVABC0807"},
	[1] = {.size = 1024, .perm = RDWR, .serial_number = "PCDDEVXYZ1907"}

};

static void pcdev_release(struct device *dev)
{
	pr_info("device released \n");
}

struct platform_device platform_dev_1 = {

	.name = "pseudo-char-jay-device",
	.id = 0,
	.dev = {
		.platform_data = &pcdev_data[0],
		.release = pcdev_release,
	},
};

struct platform_device platform_dev_2 = {

	.name = "pseudo-char-jay-device",
	.id = 1,
	.dev = {
		.platform_data = &pcdev_data[1],
		.release = pcdev_release,
	},
};


static int __init pcdev_platform_init(void)
{
	//register the platform device
	platform_device_register(&platform_dev_1);
	platform_device_register(&platform_dev_2);
	pr_info("Device setup module Loaded!");
	return 0;

}

static void __exit pcdev_platform_exit(void)
{
	//unregister the platform device
	platform_device_unregister(&platform_dev_1);
	platform_device_unregister(&platform_dev_2);
	pr_info("device setup module unloaded\n");

}

module_init(pcdev_platform_init);
module_exit(pcdev_platform_exit);

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Module which represents registration of paltform device");
MODULE_AUTHOR("JAY");
