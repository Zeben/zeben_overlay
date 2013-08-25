zeben_overlay
=============
Hi! This is a simple overlay for best programs that wasn't be written into 
official Gentoo Portage tree and official Layman's list.

Here is a good programs like: PCSX2 (Live builds), Dolphin-emu (Live builds), Smartcam (Fixes for new 3.x.x 
kernels), and others.
If you want to add this overlay on your Gentoo, just emerge layman, setup source 
in your make.conf file and type:

layman -o https://dl.dropboxusercontent.com/u/36143882/layman.xml -fa zeben-overlay

NOTE: This overlay has ebuilds for PCSX2 that can build on AMD64 Gentoo systems without chroot.
An advanced guilde will be written in near future.
