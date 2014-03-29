# Android Development Environment

This vagrant box is a very spare 32bit Debian Linux running the
minimalist XFCE window manager. On boot XFCE is started automatically
and the 'vagrant' user is automatically logged in.

The box is set up as described in the vagrant docs for a typical
vagrant box, so there is a 'vagrant' user with password 'vagrant',
with password-less sudo. The root user password is also 'vagrant'.  

The base-box contains nothing more than that, so the Vagrantfile 
installs:

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
virtualbox extensions in order that usb2 support is enabled 
(virtualbox extensions is _not_ the same as guest additions,
which are already installed in the Debian guest!).

To install the virtualbox extensions, download the .vbox_extpack
file from the [virtualbox downloads page](https://www.virtualbox.org/wiki/Downloads), then start up the "virtualbox manager", go to the File menu,
(or the VirtualBox menu, if you're on Mac OS), and open Preferences.

Once in Preferences, go to "extensions", click the little blue icon
with the yellow down arrow, pick the .vbox_extpack file from whereever
you downloaded it to, and you're good to go.


## UDEV RULES

Android development on Linux requires udev rules configurations
for each type of device you want to use (by manufacturer). I've
already added the complete set of manufacturers as listed here:
http://developer.android.com/tools/device.html#VendorIds
