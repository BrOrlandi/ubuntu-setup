#!/bin/bash


# GNOME Setup
sudo apt install -y gnome-session

echo "Restart computer to login in default GNOME Shell Theme"
echo "Open GNOME Tweak Tool and configure to use the Adwaita Theme"
echo "In the next command Select 'gnome.css' to update Login Screen to default GNOME Theme"

sudo update-alternatives --config gdm3.css

# Install softwares

sudo apt install -y build-essential curl gnome-tweak-tool

# config git

git config --global user.email "brorlandi@gmail.com"
git config --global user.name "BrOrlandi"

# Remove Amazon
sudo rm /usr/share/applications/ubuntu-amazon-default.desktop

# Import Terminal config
# export config: dconf dump /org/gnome/terminal/legacy/ > ./configs/terminal-dconf
dconf load /org/gnome/terminal/legacy/ < ./configs/terminal-dconf
