#!/bin/bash

mkdir -p ~/.config/openbox
mkdir -p ~/.config/tint2
mkdir -p ~/.config/obmenu-generator
#mkdir -p ~/.config/cairo-dock
#mkdir -p ~/.config/xfce4
mkdir -p ~/.themes
#mkdir -p ~/.gkrellm2

cd openbox
tar -xzvf obmenu-generator.tar.gz
#tar -xzvf cairo-dock.tar.gz
tar -xzvf themes.tar.gz
#tar -xzvf gkrellm2.tar.gz

cd openbox2
cp -r * ~/.config/openbox
cd ..

cd tint2
cp -r * ~/.config/tint2
cd ..

cd obmenu-generator
cp -r * ~/.config/obmenu-generator
cd ..

#cd cairo-dock
#cp -r * ~/.config/cairo-dock
#cd ..

#cd xfce4
#cp -r * ~/.config/xfce4
#cd ..

cd themes
cp -r * ~/.themes
cd ..

#cd gkrellm2
#cp -r * ~/.gkrellm2
#cd ..

cd ..





