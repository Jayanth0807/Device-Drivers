obj-m:= skel.o

KERNELDIR= /lib/modules/$(shell uname -r)/build

all:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
