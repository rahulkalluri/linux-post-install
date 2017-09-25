#!/bin/bash
#
# Make my life a little easier.
#
# Author
#   Rahul Kalluri 

# add all the appropriate repositories and keys 

#base R
sudo add-apt-repository -y ppa:marutter/rrutter

# repository for mps-youtube
sudo add-apt-repository -y ppa:snwh/pulp 

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410 
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list -y

# sublime
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3

# basic updates
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

# install apps
sudo apt-get -y --allow-unauthenticated install \
	nano neovim git sublime-text-installer curl terminator firmware-iwlwifi neofetch tlp tlp-rdw tp-smapi-dkms acpi-call-dkms \
	caffeine dpkg enpass fluxgui \
	taskwarrior googler git-gui  \
	mongodb-compass python3 python3-pip python3-neovim r-base r-base-dev openjdk-8-jdk \
	rtv spotify-client deluge vlc browser-plugin-vlc \
	arc-theme paper-icon-theme paper-cursor-theme


# Install MPS-YT and dependencies
sudo pip3 install -U git+https://github.com/mps-youtube/mps-youtube.git
sudo pip3 install dbus-python pygobject


# prompt for a reboot
clear
echo ""
echo "===================="
echo " TIME FOR A REBOOT! "
echo "===================="
echo ""

