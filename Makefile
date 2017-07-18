#ARCH=x86org
ARCH=amlogic

#$(info, $(ARCH))//内核 androidmk使用

ifeq ($(ARCH), x86org)
    CC = gcc
    CFLAGS = -DORG_TEST -O2  -Wall --static
endif

yang:yang.o
	${CC} yang.c -o $@ -L. -lusb-1.0 $(CFLAGS)
	rm -rf *.o
clean:  
	rm -rf *.o yang 
