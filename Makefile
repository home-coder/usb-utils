ARCH=x86org

ifeq ($(ARCH), x86org)
    CC = gcc
    CFLAGS = -O2  -Wall 
endif

yang:yang.o
	${CC} yang.c -o $@ -L. -lusb-1.0 $(CFLAGS)
	rm -rf *.o
clean:  
	rm -rf *.o yang 
