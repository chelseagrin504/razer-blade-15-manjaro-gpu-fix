#!/bin/bash

sudo systemctl stop sddm
sudo mhwd -r pci video-linux
sudo mhwd -i pci video-nvidia-440xx
sudo pacman --noconfirm -S linux54-headers linux55-headers xorg-xrandr xf86-video-intel git
sudo pacman --noconfirm -S acpi_call-dkms
sudo modprobe acpi_call
mkdir ~/Programs
cd ~/Programs
git clone https://github.com/dglt1/optimus-switch-sddm.git
cd ~/Programs/optimus-switch-sddm
nano ~/Programs/optimus-switch-sddm/switch/nvidia/optimus.sh
chmod +x install.sh
sudo ./install.sh
cd ~/Programs/optimus-switch-sddm/switch
chmod +x set-intel.sh
chmod +x set-nvidia.sh
sudo ./set-intel.sh
