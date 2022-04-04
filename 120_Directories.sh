#!/bin/bash -e

cd awesome
chmod +x *.sh
cd polybar
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..
cd ..

cd openbox
cd openbox2
chmod +x *.sh
cd ..
cd ..

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

cd bspwm
chmod +x bspwmrc
cd ..

cd polybar-bspwm
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

cd herbstluftwm
chmod +x autostart
chmod +x autostart.1
chmod +x *.sh
chmod +x config.ini
chmod +x scratchpad
chmod +x sxhkdrc

sudo cp scratchpad /usr/local/bin/scratchpad

cd scripts
chmod +x *.sh
cd ..
cd ..

cp brave.png ~/Pictures
cp exit.png ~/Pictures
cp files.png ~/Pictures
cp settings.png ~/Pictures
cp startup.png ~/Pictures

#########Install Directories & Files######
mkdir -p ~/.config/picom
cp picom.conf ~/.config/picom/picom.conf

mkdir -p ~/.config/dunst
cp dunstrc ~/.config/dunst/dunstrc

mkdir -p $HOME"/.config/polybar-bspwm"
mkdir -p $HOME"/.config/bspwm"

mkdir -p ~/.config/rofi
mkdir -p ~/.config/jgmenu
mkdir -p ~/.config/xfce4/terminal
mkdir -p ~/.config/lxterminal
mkdir -p ~/.config/herbstluftwm
mkdir -p ~/.config/geany

cd geany
cp -r * ~/.config/geany
cd ..

cp lxterminal.conf ~/.config/lxterminal/lxterminal.conf
cp terminalrc ~/.config/xfce4/terminal/terminalrc
cp bashrc ~/.bashrc

cd rofi
cp -r * ~/.config/rofi
cd ..

cd jgmenu
cp -r * ~/.config/jgmenu
cd ..

####### Install herbstluftwm ################
cd herbstluftwm
cp -r * ~/.config/herbstluftwm
cd ..

#######Install bspwm ########################
cd polybar-bspwm
cp -r * ~/.config/polybar-bspwm
cd ..

cd bspwm
cp -r * ~/.config/bspwm
cd ..

##########################################

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


######### Awesome ##################################
mkdir -p ~/.config/awesome
git clone --recurse-submodules --remote-submodules --depth 1 -j 2 https://github.com/lcpz/awesome-copycats.git
mv -bv awesome-copycats/* ~/.config/awesome; rm -rf awesome-copycats

cd awesome
cp -r * ~/.config/awesome
cd ..


cd ~/.config/awesome
git clone https://github.com/streetturtle/awesome-wm-widgets.git

######## Ending ####################################
cd ~/Luke/dwm-flexipatch
tar -xzvf patch.tar.gz
sudo make clean install

cd ~/Luke/dwmblocks
sudo make clean install

cd ~/Luke/st-transparency-scrollback
sudo make clean install
###############################Install flatpak and application########################

sudo apt install flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.github.unrud.VideoDownloader



