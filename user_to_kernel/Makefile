obj-m:=kspace.o

KERNELDIR= /lib/modules/$(shell uname -r)/build
PWD:=$(shell pwd)

all:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
	gcc -o user user.c
clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
	rm -rf user
