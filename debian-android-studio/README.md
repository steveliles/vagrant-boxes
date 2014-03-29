# Android Development Environment

This vagrant box is a very spare 32bit Debian Linux running the
minimalist XFCE window manager. The base-box contains nothing more
than that, so the Vagrantfile installs:

* A better terminal editor (lxterminal)
* A bunch of handy tools such as git, svn and curl
* Oracle Java7
* Android Studio 0.4.6 (latest stable at time of writing)
* Android Development Tools r22.6.2 (latest at time of writing)
* udev rules for Google's list of device manufacturers (see below)

The versions of AS and ADT installed can be easily modified by
tweaking the install-tools.sh file.

## IMPORTANT NOTE:

To do Android development from VirtualBox you _must_ install the 
virtualbox extensions (this is _not_ the same as guest additions!)
to enable USB2 support.

## UDEV RULES

Android development on Linux requires udev rules configurations
for each type of device you want to use (by manufacturer). I've
already added the complete set of manufacturers as listed here:
http://developer.android.com/tools/device.html#VendorIds
