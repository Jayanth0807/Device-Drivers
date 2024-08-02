#include <linux/module.h>
#define INCLUDE_VERMAGIC
#include <linux/build-salt.h>
#include <linux/elfnote-lto.h>
#include <linux/export-internal.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

#ifdef CONFIG_UNWINDER_ORC
#include <asm/orc_header.h>
ORC_HEADER;
#endif

BUILD_SALT;
BUILD_LTO_INFO;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(".gnu.linkonce.this_module") = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif



static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0x13c49cc2, "_copy_from_user" },
	{ 0xe3ec2f2b, "alloc_chrdev_region" },
	{ 0xed085bff, "cdev_alloc" },
	{ 0x8f789495, "cdev_init" },
	{ 0xada7392c, "cdev_add" },
	{ 0x9cb09594, "class_create" },
	{ 0xbf78143c, "device_create" },
	{ 0x1a103589, "kmalloc_caches" },
	{ 0xb236c6eb, "kmalloc_trace" },
	{ 0xcea40124, "cdev_del" },
	{ 0x6091b333, "unregister_chrdev_region" },
	{ 0x64b63300, "class_destroy" },
	{ 0x37a0cba, "kfree" },
	{ 0x6b10bee1, "_copy_to_user" },
	{ 0xbdfb6dbb, "__fentry__" },
	{ 0x122c3a7e, "_printk" },
	{ 0x5b8239ca, "__x86_return_thunk" },
	{ 0x88db9f48, "__check_object_size" },
	{ 0x43581fb4, "module_layout" },
};

MODULE_INFO(depends, "");


MODULE_INFO(srcversion, "35843934110380665D1DD4D");
