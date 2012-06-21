ifneq ($(KERNELRELEASE),)

obj-m := asus_oled.o

else

obj-m := asus_oled.o

KVER  := $(shell uname -r)

KDIR := /lib/modules/$(KVER)/build
MDIR := /lib/modules/$(KVER)/extra/
PWD := $(shell pwd)

default:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules

install:
	install -d $(MDIR)
	install -m 644 -c $(obj-m:.o=.ko) $(MDIR)
	depmod -a

clean:
	rm -rf *~ *.mod.c *.o *.ko .tmp_versions Module.symvers .$(obj-m:.o=)* modules.order

endif
