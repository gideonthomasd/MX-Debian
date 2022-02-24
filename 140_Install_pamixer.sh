#!/bin/bash -e

cd pamixer
sudo meson setup build
sudo meson compile -C build
sudo apt install pamixer
cd ..
