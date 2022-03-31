#!/bin/bash

#### Install ############################

sudo apt install -y openbox obconf lxappearance lxappearance-obconf tint2 git lxtask feh xterm 
#cairo-dock cairo-dock-gnome-integration-plug-in cairo-dock-plug-ins

echo 'deb http://download.opensuse.org/repositories/home:/Head_on_a_Stick:/obmenu-generator/Debian_Unstable/ /' | sudo tee /etc/apt/sources.list.d/home:Head_on_a_Stick:obmenu-generator.list
curl -fsSL https://download.opensuse.org/repositories/home:Head_on_a_Stick:obmenu-generator/Debian_Unstable/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_Head_on_a_Stick_obmenu-generator.gpg > /dev/null
sudo apt update
sudo apt install obmenu-generator


#### Create directories##################

mkdir -p ~/.config/openbox
mkdir -p ~/.config/tint2
mkdir -p ~/.config/obmenu-generator
mkdir -p ~/.config/cairo-dock
mkdir -p ~/.config/xfce4
mkdir -p ~/.themes
mkdir -p ~/.gkrellm2

##########################################

#### Copy into directories ###############

cd openbox
tar -xzvf obmenu-generator.tar.gz
tar -xzvf cairo-dock.tar.gz
tar -xzvf themes.tar.gz
tar -xzvf gkrellm2.tar.gz


cd openbox
cp -r * ~/.config/openbox
cd ..

cd tint2
cp -r * ~/.config/tint2
cd ..

cd obmenu-generator
cp -r * ~/.config/obmenu-generator
cd ..

cd cairo-dock
cp -r * ~/.config/cairo-dock
cd ..

cd xfce4
cp -r * ~/.config/xfce4
cd ..

cd themes
cp -r * ~/.themes
cd ..

cd gkrellm2
cp -r * ~/.gkrellm2
cd ..

cd ..

#####################################

