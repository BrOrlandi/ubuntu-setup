#!/bin/bash

sudo apt install -y gnome-session

echo "Restart computer to login in default GNOME Shell Theme"
echo "Open GNOME Tweak Tool and configure to use the Adwaita Theme"
echo "In the next command Select 'gnome.css' to update Login Screen to default GNOME Theme"

sudo update-alternatives --config gdm3.css