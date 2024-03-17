#!/bin/sh

if [[ $EUID -ne 0 ]];then
    echo " This script has to be run as sudo (root)"
    exit 1
else
    apt install figlet
    echo ---------------------------------------------------------------------------------------
    echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    echo                                Ubuntu Updater V 0.1
    echo ---------------------------------------------------------------------------------------
    echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    
    # Add apt repositories
    sudo apt install ubuntu-restricted-extras -y
    sudo add-apt-repository universe -y
    sudo add-apt-repository ppa:oguzhaninan/stacer
    
    
    # first update routine
    sudo apt-get update  # To get the latest package lists
    sudo apt-get upgrade -y
    
    
    # Improve Battery usage
    sudo apt-get install tlp tlp-rdw -y
    sudo tlp start
    
    
    # Change Ubuntu style
    # Minimize Ubuntu Dock
    sudo apt install gnome-tweaks -y
    sudo apt install  gnome-shell-extension-gsconnect -y
    echo $gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
    
    
    # Install several terminal application
    sudo apt install zsh -y
    sudo apt-get install curl
    sudo apt-get install tree -y
    sudo apt-get install htop -y
    
    
    # Tune Up for Python-coding: Poetry
    sudo curl -O https://bootstrap.pypa.io/get-pip.py
    sudo python get-pip.py
    sudo pip install --user pipx
    sudo apt install pipx -y
    sudo pipx ensurepath
    sudo python -m pip install --user virtualenv
    sudo pipx install poetry
    sudo pipx ensurepath
    
    
    # install applications
    sudo apt install snapd
    sudo snap install chromium
    sudo snap install codium --classic
    sudo apt install filezilla
    wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
    sudo apt install gitkraken-amd64.deb

    
    # change the ubuntu desktop idle state
    sudo apt install caffeine -y
    
    
    # optimize ubuntu load time
    sudo apt install preload -y
    
    
    # uninstall not needed apps
    sudo apt remove firefox -y
    rm -Rf /usr/bin/firefox
    rm -Rf /usr/loca/firefox
    sudo snap remove firefox
    
    
    # Clean Up after installation
    apt-get update  # To get the latest package lists
    apt-get upgrade -y
    apt-get autoclean -y
    apt-get clean -y
    apt-get autoremove -y
    
    # get a tool to tuneup
    sudo apt-get update -y
    sudo apt-get upgrade
    sudo apt-get install stacer
    
    echo ---------------------------------------------------------------------------------------
    echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    echo Versions of the installed software:
    
    git --version
    curl --version
    gnome-tweaks --version
    caffeine --version
    sudo preload --version
    
    
    # stacer
    echo ---------------------------------------------------------------------------------------
    echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    echo                        Ubuntu is now ready to work
    echo +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    echo ---------------------------------------------------------------------------------------
    
    
fi