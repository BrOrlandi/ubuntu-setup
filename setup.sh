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
git --version
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

./gnome-extension-install.sh install apps-menu@gnome-shell-extensions.gcampax.github.com
./gnome-extension-install.sh install auto-move-windows@gnome-shell-extensions.gcampax.github.com
./gnome-extension-install.sh install desktop-scroller@brorlandi
./gnome-extension-install.sh install freon@UshakovVasilii_Github.yahoo.com
./gnome-extension-install.sh install mediaplayer@patapon.info
./gnome-extension-install.sh install native-window-placement@gnome-shell-extensions.gcampax.github.com
./gnome-extension-install.sh install screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com
./gnome-extension-install.sh install topIcons@adel.gadllah@gmail.com
echo "Logout and login again to reload GNOME Shell with Extensions"


# Spotify repo
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# VS Code repo
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# APT UPDATE 

sudo apt update

# Spotify
sudo apt install -y spotify-client

# VS Code
sudo apt install -y code

# VS Code Extensions

code --install-extension EditorConfig.EditorConfig
code --install-extension Orta.vscode-jest
code --install-extension PeterJausovec.vscode-docker
code --install-extension Shan.code-settings-sync
code --install-extension christian-kohler.npm-intellisense
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension felipe.nasc-touchbar
code --install-extension ginfuru.ginfuru-vscode-jekyll-syntax
code --install-extension ginfuru.vscode-jekyll-snippets
code --install-extension glen-84.sass-lint
code --install-extension killalau.vscode-liquid-snippets
code --install-extension mdickin.markdown-shortcuts
code --install-extension neilding.language-liquid
code --install-extension robinbentley.sass-indented
code --install-extension ryanluker.vscode-coverage-gutters
code --install-extension shardulm94.trailing-spaces
code --install-extension stevejpurves.cucumber
code --install-extension sysoev.language-stylus
code --install-extension xabikos.JavaScriptSnippets
code --install-extension xabikos.ReactSnippets
