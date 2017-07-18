# usb-utils
 libusb 是一个用C语言开发的跨平台的USB设备访问接口库。使用它，不需要知道操作系统的细节，也不需要底层驱动，只须对USB有足够的了解，所有的工作都可以在用户态完成。

 Ubuntu台式机机器测试
 Ubuntu上安装方法：
	 sudo apt-get install libusb-1.0-0-dev
	 头文件 <libusb-1.0/libusb.h>
	 链接库 -lusb-1.0
	 关于api，由于网上的例子鱼龙混杂,这里说明一下1.0版本的api都是以libusb_开头的.

gcc yang.c -lusb-1.0
sudo ./a.out

-----------------------------------------------------

添加两个包，一个是libusb，一个是usbutils
需要：在各个平台编译通过就可以了 ！因为大量的测试工作放到Ubuntu机器上面就可以

---------------------------------------------------
gcc -c help.c
gcc -o help help.o -L. -lusb-1.0
其中 上面的usb-1.0是从 libusb-1.0.9 中拿到 libusb-1.0.so这个动态库，然后就是标准的动态库参与编译的写法了
