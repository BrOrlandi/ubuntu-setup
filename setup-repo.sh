#!bin/bash

sudo apt update -y
sudo apt upgrade -y

sudo apt install -y git

cd ~/
mkdir projects/
git clone https://github.com/BrOrlandi/ubuntu-setup.git
cd ubuntu-setup/
./setup.sh