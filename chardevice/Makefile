obj-m:=dyna_char.o

KERNELDIR= /lib/modules/$(shell uname -r)/build

default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

install:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules_install

cleanup:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
