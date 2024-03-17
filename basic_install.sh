#!/bin/sh

# Add apt repositories
apt install ubuntu-restricted-extras
add-apt-repository universe -y

#Improve Battery usage
sudo apt-get install tlp tlp-rdw
sudo tlp start

## Change Ubuntu style
#Minimize Ubuntu Dock
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize' -y
apt install gnome-tweak-tool 




apt-get update  # To get the latest package lists
apt-get upgrade -y
apt-get install curl
apt-get install tree -y
apt-get install htop -y
apt-get install code -y
sudo apt update
sudo apt install pipx -y
pipx ensurepath 
python -m pip install --user virtualenv
pipx install poetry 
pipx ensurepath
apt install zsh -y



#Clean Up after installation
apt-get update  # To get the latest package lists
apt-get upgrade -y
apt-get autoclean
apt-get clean
apt-get autoremove
#etc.

