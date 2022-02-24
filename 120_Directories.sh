#!/bin/bash -e

cd rofi
cd applets
cd applets
chmod +x *.sh
cd ..
cd ..
cd launchers
cd colorful
chmod +x *.sh
cd ..
cd ..
cd ..

cd i3
cd polybar
chmod +x *.sh
cd ..
cd bin
chmod +x *.sh
cd ..
cd ..

#########Install Directories & Files######
mkdir -p ~/.config/picom
cp picom.conf ~/.config/picom/picom.conf

mkdir -p ~/.config/dunst
cp dunstrc ~/.config/dunst/dunstrc

mkdir -p ~/.config/rofi
mkdir -p ~/.config/jgmenu
mkdir -p ~/.config/xfce4/terminal

cp terminalrc ~/.config/xfce4/terminal/terminalrc
cp bashrc ~/.bashrc

cd rofi
cp -r * ~/.config/rofi
cd ..

cd jgmenu
cp -r * ~/.config/jgmenu
cd ..

#### Install i3 ##########################
mkdir -p ~/.config/i3

cd i3
cp -r * ~/.config/i3
cd ..
##########################################

#### Install fonts #######################

mkdir -p ~/.local/share/fonts

cd font
cp -r * ~/.local/share/fonts
cd ..

cd font2
cp -r * ~/.local/share/fonts
cd ..

cd font3
cp -r * ~/.local/share/fonts
cd ..

###########################################

####### Install jgmenu ####################

sudo dpkg -i jgmenu_4.4.0-1_amd64.deb
cp powermenu.sh ~/powermenu.sh
cp log.sh ~/log.sh

######## Wallpaper ########################

cd i3
mkdir -p ~/Pictures/wallpapers
cp wallpaper.jpg ~/Pictures/wallpapers/wallpaper.jpg
cd ..
###########################################

######## Install DWM ##############################

mkdir -p ~/.local/share/dwm
sudo mkdir -p /usr/share/xsessions

mkdir -p ~/Luke

cd Luke
cd statusbar
chmod +x *.sh
chmod +x sb-volume
chmod +x sb-clock
cd ..
cd ..

cd Luke
cp -r * ~/Luke
cd ..

sudo cp dwm.desktop /usr/share/xsessions/dwm.desktop
cp autostart.sh ~/.local/share/dwm

######## Ending ####################################
cd ~/Luke/dwm-flexipatch
tar -xzvf patch.tar.gz
sudo make clean install

cd ~/Luke/dwmblocks
sudo make clean install

cd ~/Luke/st-transparency-scrollback
sudo make clean install
