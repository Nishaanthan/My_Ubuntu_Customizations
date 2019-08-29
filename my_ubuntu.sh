#!/bin/bash

# remove quite splash in ubuntu to see a text interface bootup

cat << EOF

       =================================================
       =================================================
       ====                                         ====
       ====         UPDATING UBUNTU FIRST           ====
       ====                                         ==== 
       =================================================
       =================================================

EOF

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

cat << EOF

       =================================================
       =================================================
       ====                                         ====
       ====         INSTALLING GIT & CURL           ====
       ====                                         ==== 
       =================================================
       =================================================

EOF

sudo apt install git
sudo apt install curl

cat << EOF

       =================================================
       =================================================
       ====                                         ====
       ====         INSTALLING GRUB CUSTOMIZER      ====
       ====                                         ==== 
       =================================================
       =================================================

EOF

sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update
sudo apt-get install grub-customizer

cat << EOF

       =================================================
       =================================================
       ====                                         ====
       ====         INSTALLING GRAPHICS DRIVER      ====
       ====                                         ==== 
       =================================================
       =================================================

EOF

sudo add-apt-repository ppa:oibaf/graphics-drivers
sudo apt-get install xserver-xorg-video-intel

cat << EOF

       =================================================
       =================================================
       ====                                         ====
       ====         GNOME SHELL EXTENSIONS          ====
       ====                                         ==== 
       =================================================
       =================================================

EOF

sudo apt install gnome-shell-extensions

cat << EOF

       =================================================
       =================================================
       ====                                         ====
       ====         INSTALLING DEEPIN DESKTOP       ====
       ====                                         ==== 
       =================================================
       =================================================

EOF

sudo add-apt-repository ppa:leaeasy/dde
sudo apt-get update
sudo apt install dde
sudo apt-get install dde-file-manager
sudo apt install deepin-gtk-theme

cat << EOF

       =================================================
       =================================================
       ====                                         ====
       ====         INSTALLING OH MY ZSH            ====
       ====                                         ==== 
       =================================================
       =================================================

EOF

sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cat << EOF

       =================================================
       =================================================
       ====                                         ====
       ====     INSTALLING AUTO JUMP FOR ZSH        ====
       ====                                         ==== 
       =================================================
       =================================================

EOF

sudo cd Downloads/
sudo mkdir install_files && cd install_files
sudo git clone git://github.com/wting/autojump.git
sudo cd autojump
sudo ./install.py

cat << EOF

       =================================================
       =================================================
       ====                                         ====
       ====     INSTALLING VISUAL STUDIO CODE       ====
       ====                                         ==== 
       =================================================
       =================================================

EOF

sudo snap install --classic code

cat << EOF

       =================================================
       =================================================
       ====                                         ====
       ====     INSTALLING ZSH AUTO SUGGESIONS      ====
       ====                                         ==== 
       =================================================
       =================================================

EOF

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cat << EOF

       =================================================
       =================================================
       ====                                         ====
       ====          CLEANING UNWANTED              ====
       ====                                         ==== 
       =================================================
       =================================================

EOF

sudo apt autoremove

cat << EOF

       =================================================
       =================================================
       ====                                         ====
       ====     !!!!!    PLEASE RESTART PC          ====
       ====              NOT SHUTDOWN       !!!!    ==== 
       ====                                         ==== 
       =================================================
       =================================================

EOF

# snapcraft.io for best ubuntu packages

