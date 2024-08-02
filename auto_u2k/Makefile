obj-m:= a_kspace.o

KERNELDIR= /lib/modules/$(shell uname -r)/build
PWD:=$(shell pwd)

all:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
	#gcc -o a_uspace a_uspace.c
clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
	#rm -rf a_uspace

