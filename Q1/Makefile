obj-m:=t1.o

KERNELDIR= /lib/modules/$(shell uname -r)/build


default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

install:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) module_install

clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
