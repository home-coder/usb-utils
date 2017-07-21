# usb-utils
 libusb 是一个用C语言开发的跨平台的USB设备访问接口库。使用它，不需要知道操作系统的细节，也不需要底层驱动，只须对USB有足够的了解，所有的工作都可以在用户态完成。

 Ubuntu台式机机器测试
 Ubuntu上安装方法：
	 sudo apt-get install libusb-1.0-0-dev
	 头文件 <libusb-1.0/libusb.h>
	 链接库 -lusb-1.0
	 关于api，由于网上的例子鱼龙混杂,这里说明一下1.0版本的api都是以libusb_开头的.

//gcc yang.c -lusb-1.0
gcc -o yang yang.c -L. -lusb-1.0 使用本地编译出来的libusb动态库，不再使用Ubuntu apt-get安装的
sudo ./a.out

-----------------------------------------------------

添加两个包，一个是libusb，一个是usbutils
需要：在各个平台编译通过就可以了 ！因为大量的测试工作放到Ubuntu机器上面就可以

---------------------------------------------------
gcc -c help.c
gcc -o help help.o -L. -lusb-1.0
其中 上面的usb-1.0是从 libusb-1.0.9 中拿到 libusb-1.0.so这个动态库，然后就是标准的动态库参与编译的写法了

----------------------------------------------------
usbutils的编译通不过，因为里面用到了libudev



===========================TODO=========================
0. 需掌握lib库的使用，应用场景//新建一个git仓来做这件事情
1. 完成usb的热插拔监测
2. 完成usb数据传输功能，需要依赖具体的设备和设备协议


0号任务
use-lib-scene这个目录 git@github.com:home-coder/use-lib-scene.git就是完成上面0任务的，已经搞定.
-
并且libusb库的编译方式如下
#!/bin/bash
#MGCC=/opt/toolchain/mstar/linaro-aarch64_linux-2014.09_843419-patched/bin/aarch64-linux-gnu-gcc
#./configure CC=$MGCC  --host=arm-linux --prefix=$PWD/_install  
#make && make install

#---------x86平台----------
#./configure  --prefix=$PWD/_install86
#make && make install

------------------------------------------------------------------
2号任务
参考链接http://blog.csdn.net/dotphoenix/article/details/39158149
