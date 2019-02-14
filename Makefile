#
# Makefile for the virtual touchscreen driver.
#

KDIR ?= $(KERNEL_SRC)

obj-m := virtual_touchscreen.o

default:
	$(MAKE) -C $(KDIR) M=$$PWD modules

modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) modules_install

clean:
	rm -f *.o *.cmd *.mod.c .*.o* .*.ko* *~ *.ko Module.markers modules.order Module.symvers 
	rm -rf .tmp_versions/
