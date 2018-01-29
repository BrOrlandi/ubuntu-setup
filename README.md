# My Ubuntu setup script

Generate SSH Key for GitHub:
```
cd /tmp

wget -O generate-github-ssh-key.sh https://raw.githubusercontent.com/BrOrlandi/ubuntu-setup/master/generate-github-ssh-key.sh?token=ABhVIi0Ffpm4vOIXgdJDWgHRx-dawEPjks5aeLLTwA%3D%3D

chmod +x ./generate-github-ssh-key.sh
./generate-github-ssh-key.sh

# Downloading and running.

wget -O setup-repo.sh https://raw.githubusercontent.com/BrOrlandi/ubuntu-setup/master/setup-repo.sh?token=ABhVIrZ-JlsaPJ7WHSy6OijTRGY1XrDCks5aeK2_wA%3D%3D

chmod +x ./setup-repo.sh
./setup-repo.sh
```