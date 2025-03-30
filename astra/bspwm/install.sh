#!/bin/bash

#required: accsess to astra base repository (local will do), git and internet connection.

sudo apt install build-essential
cd ~
mkdir ~/.source
cd ~/.source
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
cd ./bspwm
sudo apt install libxcb-xinerama-dev
sudo apt install libxcb-util-dev
sudo apt install libxcb-icccm4-dev
sudo apt install libxcb-randr0-dev
sudo apt install libxcb-ewmh-dev
sudo apt install libxcb-keysyms1-dev
sudo apt install libxcb-shape0-dev
make
sudo make install
cd ../sxhkd
make
sudo make install
cd ~
mkdir ~/.config/
mkdir ~/.config/bspwm 
mkdir ~/.config/sxhkd
cp ~/.source/bspwm/examples/bspwmrc ~/.config/bspwm
cp ~/.source/bspwm/examples/sxhkdrc ~/.config/sxhkd
cd ~/.source/sxhkd
chmod +x sxhkdrc
cd ~
echo -e "exec sxhkd & \nexec bspwm" >> ~/.xinitrc



