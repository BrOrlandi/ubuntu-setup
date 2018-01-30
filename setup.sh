#!/bin/bash


# GNOME Setup
sudo apt install -y gnome-session

echo "Restart computer to login in default GNOME Shell Theme"
echo "Open GNOME Tweak Tool and configure to use the Adwaita Theme"
echo "In the next command Select 'gnome.css' to update Login Screen to default GNOME Theme"

sudo update-alternatives --config gdm3.css

# Install softwares

sudo apt install -y build-essential curl gnome-tweak-tool vim

# config git

git config --global user.email "brorlandi@gmail.com"
git config --global user.name "BrOrlandi"

# Remove Amazon
sudo rm /usr/share/applications/ubuntu-amazon-default.desktop

# Import Terminal config
# export config: dconf dump /org/gnome/terminal/legacy/ > ./configs/terminal-dconf
dconf load /org/gnome/terminal/legacy/ < ./configs/terminal-dconf
# gedit config
dconf load /org/gnome/gedit/preferences/editor/ < ./configs/gedit-dconf

# ZSH
sudo apt install -y zsh
chsh -s $(which zsh)
zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp ./configs/.zshrc ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Wallpaper
DIR=$(pwd)
gsettings set org.gnome.desktop.background picture-uri file:///$DIR/configs/gnome-wallpaper.jpg

# Grub color
sudo cp ./configs/grub-color-config /usr/share/plymouth/themes/default.grub
sudo update-grub

# GNOME Extensions
sudo apt-get install chrome-gnome-shell

./gnome-extension-install install alternate-tab@gnome-shell-extensions.gcampax.github.com
./gnome-extension-install install apps-menu@gnome-shell-extensions.gcampax.github.com
./gnome-extension-install install auto-move-windows@gnome-shell-extensions.gcampax.github.com
./gnome-extension-install install desktop-scroller@brorlandi
./gnome-extension-install install freon@UshakovVasilii_Github.yahoo.com
./gnome-extension-install install mediaplayer@patapon.info
./gnome-extension-install install native-window-placement@gnome-shell-extensions.gcampax.github.com
./gnome-extension-install install screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com
./gnome-extension-install install topIcons@adel.gadllah@gmail.com
