#
# Makefile for the virtual touchscreen driver.
#

KDIR ?= $(KERNEL_SRC)

obj-m := virtual_touchscreen.o

default:
	$(MAKE) -C $(KDIR) M=$$PWD modules

clean:
	rm -f *.o *.cmd *.mod.c .*.o* .*.ko* *~ *.ko Module.markers modules.order Module.symvers 
	rm -rf .tmp_versions/
