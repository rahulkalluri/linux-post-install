#!/bin/bash


# Make my life a little easier.
#
# Author
#   Rahul Kalluri 

# add all the appropriate repositories and keys 

# R
sudo sh -c 'echo "deb http://cran.rstudio.com/bin/linux/debian jessie-cran3/" >> /etc/apt/sources.list'
sudo add-apt-repository -y ppa:marutter/rrutter

# MongoDB Community
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/3.4 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

#Cassandra by Apache
echo "deb http://www.apache.org/dist/cassandra/debian 311x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list 
curl https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add - 
sudo apt-key adv --keyserver pool.sks-keyservers.net --recv-key A278B781FE4B2BDA 


# Synapse 
sudo add-apt-repository ppa:synapse-core/ppa

#Redshift instead of Flux 
sudo add-apt-repository ppa:dobey/redshift-daily

# Adds the CRAN GPG key, which is used to sign the R packages for security.
sudo apt-key adv --keyserver subkeys.pgp.net --recv-key 381BA480

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
	# tools
	nano neovim redshift git sublime-text-installer curl tilda firmware-iwlwifi neofetch tlp tlp-rdw tp-smapi-dkms acpi-call-dkms \
	dpkg enpass synapse \
	taskwarrior googler git-gui dselect tlp tlp-rdw tp-smapi-dkms acpi-call-dkms\
	
	# data science
	mongodb-compass python3 python3-pip python3-neovim r-base r-base-dev openjdk-8-jdk mongodb-org cassandra\
		
	# media
	rtv spotify-client deluge vlc browser-plugin-vlc \
	
	# theming
	arc-theme paper-icon-theme paper-cursor-theme


# Install MPS-YT and dependencies
sudo pip3 install -U git+https://github.com/mps-youtube/mps-youtube.git
sudo pip3 install dbus-python pygobject

# Install in R
# install.packages(c("readr", "tidyverse", "tibble", "ISLR"))


# prompt for a reboot
clear
echo ""
echo "===================="
echo " TIME FOR A REBOOT! "
echo "===================="
echo ""

