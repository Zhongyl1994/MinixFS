#
# Makefile for the Linux minix filesystem routines.
#
obj-m += minix.o
minix-objs := bitmap.o itree_v1.o itree_v2.o namei.o inode.o file.o dir.o

all:
	make -C /usr/src/kernels/$(shell uname -r) M=$(PWD) modules
clean:
	make -C /usr/src/kernels/$(shell uname -r) M=$(PWD) clean
