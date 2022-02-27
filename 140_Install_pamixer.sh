#!/bin/bash -e

cd pamixer
sudo meson setup build
sudo meson compile -C build
cd build
sudo cp pamixer /usr/bin/pamixer
cd ..
cd ..
