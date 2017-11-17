
KERNEL_DIR := /lib/modules/$(shell uname -r)/build

PWD := $(shell pwd)

obj-m := aufs.o

default:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) modules
	
clean:
	$(MAKE) -C $(KERNEL_DIR) SUBDIRS=$(PWD) clean
	#-rm *.mod.c *.ko *.o *.o.rc *.order *.symvers