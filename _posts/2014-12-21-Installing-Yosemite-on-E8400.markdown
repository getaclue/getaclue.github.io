---
layout: post
title: Installing Yosemite on E8400
author: Alex Kluew
---
First and foremost... I like experimenting with different OS environment just so I stay familiar. Besides having Windows, CentOS, and Ubuntu running on my computer, I decided to give OS X another try.

Computer Hardware:

* [Intel Core 2 Duo E8400](http://ark.intel.com/products/33910/Intel-Core2-Duo-Processor-E8400-6M-Cache-3_00-GHz-1333-MHz-FSB)
* [Gigabyte GA-P31-DS3L Motherboard](www.gigabyte.com/products/product-page.aspx?pid=2615&kw=GA-P31-DS3L)
* [Nvidia GTS450 Graphics card](http://www.newegg.ca/Product/Product.aspx?Item=N82E16814500187)
* 4 gb DDR2 Ram (667 MHz)

As you can see, my hardware is 'old' by today's standards. However, I try to get the best bang for my buck without upgrading. I only upgrade my hardware when something fails. It has been working well so far. My computer is on 24/7/365 except for random reboots and power outages. I've had this PC on 24/7 since 2008. I've had it on 24/7/365 since 2010. I am on my second motherboard (lan failed on first one), second CPU cooler (by choice), and a 3rd GPU. This CPU is amazing.

I have not installed OS X after purchasing a new graphic card [Nvidia GTS450](http://www.newegg.ca/Product/Product.aspx?Item=N82E16814500187) earlier this year. I had an old 8600GTS before this graphic card. The prior graphic card had no problem with running OS X 10.6.

I decided to give the [hackintosh project](http://tonymacx86.com/) a shot. I installed [OS X 10.6](http://tonymacx86.blogspot.ca/2010/04/iboot-multibeast-install-mac-os-x-on.html) at first. However, I noticed that my GTS450 was not being recognized. I did perform several troubleshooting steps. After searching for a bit, I found out that GTS450 support improved as of 10.7. At this point, I was debating on whether or not to install 10.7 or to jump to 10.10.

I decided to jump to [Yosemite 10.10](http://www.tonymacx86.com/445-unibeast-install-os-x-yosemite-any-supported-intel-based-pc.html) after reading the tonymacx86 forums. A number of users reported successful bootings with Fermi graphic cards. I used my macbook to download the upgrade and make a [bootable USB](http://www.tonymacx86.com/downloads.php?do=file&id=249). The system did not boot until I added the following flags:

	GraphicsEnabler=Yes, PCIRootUID=1, npci=0x2000

You can find out what each of these flags does [here](http://www.tonymacx86.com/basics/104536-troubleshooting-issuing-boot-flags.html). After the inital install everything booted smoothly. I then ran [MultiBeast](http://www.tonymacx86.com/downloads.php?do=file&id=252). I followed the specifications for my motherboard and installed the appropriate drives. Everything worked after a restart. However, I noticed that my system experienced random freezes.

There did not appear to be any pattern to the cause of the freeze. The freezing began by not responding to any key presses or mouse clicks. However, I was able to move the mouse across my dual screen setup. After some time, the mouse cursor finally disappeared from the display(s). The system then gives a black screen and instantaneously brings the Yosemite login screen. Upon entering my password and loading Yosemite, the bug report displayed a problem with my graphic card. I spent a few hours looking for a solution.

Rather than troubleshooting a graphic card that is not natively supported by Apple (yet? will it be?), I am leaning towards upgrading my graphic card. I had previous problems with the graphic card. It is not able to support my two monitors at the maximum resolutions. I am really pushing its performance when I am editing images. Therefore, I am leaning towards upgrading my graphic card.

Ultimately, I am going to purchase a graphic card that brings my hardware closer to the Mac specifications outlined by Apple AND drives my two monitors easily (at max. resolution).

In conclusion, [this group of people](http://tonymacx86.com/) has done a fantastic job in easing the installation of OS X on any Intel-based hardware. Their guides are phenomenal. The difference between installing OS X 10.6 and 10.10 is night and day. It used to take me hours (or days) to research, prepare, compile, and install - took me a few hours for 10.10.

Not only do I have a working OS, but I also have a fully bootable USB that can be natively plugged into any Intel-based machine. Amazing.

Resource used:

	http://www.tonymacx86.com/basics/104536-troubleshooting-issuing-boot-flags.html
	http://www.tonymacx86.com/basics/116220-do-i-need-graphicsenabler-injection-not.html
	http://www.tonymacx86.com/graphics/131937-chimera-hd-graphics-bootflags-igpenabler-igplatformid-igpdeviceid.html
	http://www.tonymacx86.com/yosemite-desktop-guides/144426-how-install-os-x-yosemite-using-clover.html
	http://www.tonymacx86.com/445-unibeast-install-os-x-yosemite-any-supported-intel-based-pc.html
