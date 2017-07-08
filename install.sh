#!/bin/bash
sudo apt-get purge --remove plymouth
sudo systemctl disable getty@tty1
sudo apt-get install fbi
sudo wget http://www.pngmart.com/files/3/Chocolate-Splash-PNG-Pic.png
sudo cp /etc/Chocolate-Splash-PNG-Pic.png splash.png
sudo apt-get --no-install-recommends install xserver-xorg xserver-xorg-video-fbdev xinit pciutils xinput xfonts-100dpi xfonts-75dpi xfonts-scalable
