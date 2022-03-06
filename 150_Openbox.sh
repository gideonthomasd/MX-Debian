#!/bin/bash

#### Install ############################

sudo apt install -y openbox obconf lxappearance lxappearance-obconf tint2 git lxtask feh xterm

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


