#!bin/bash
#dwm: build from source and setup

#install dwm dependancies
sudo xbps-install -Syu xorg git dmenu base-devel libX11-devel libXft-devel libXinerama-devel freetype-devel fontconfig-devel  

#download sources for window manager, terminal and browser
mkdir ~/.sources
mkdir ~/.sources
cd ~/.sources
git clone https://git.suckless.org/dwm/
git clone https://git.suckless.org/st/

cp /etc/X11/xinit/xinitrc .xinitrc

cd ~/.sources/dwm
sudo make clean install

#change config (void needed)
sed -i 's_X11INC = usr/X11R6/include_X11INC = usr/include/X11_g' ~/.sources/dwm/config.mk
sed -i 's_X11LIB = usr/X11R6/lib_X11LIB = usr/lib/X11_g' ~/.sources/dwm/config.mk

cd ~/.sources/st
sudo make clean install

#change config (void needed)
sed -i 's_X11INC = usr/X11R6/include_X11INC = usr/include/X11_g' ~/.sources/dwm/config.mk
sed -i 's_X11LIB = usr/X11R6/lib_X11LIB = usr/lib/X11_g' ~/.sources/dwm/config.mk
