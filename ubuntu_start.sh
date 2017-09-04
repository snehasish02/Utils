#!/bin/bash

# SCRIPT FOR INITIAL UBUNTU SETUP
# http://www.binarytides.com/better-ubuntu-15-10/

# Add the current logged-in user to sudoers list
if grep `logname`" ALL" /etc/sudoers>/dev/null
then
    echo `logname`" already added to sudoers"
else
    echo '# Add the user '`logname`' to sudoers list' | sudo EDITOR='tee -a' visudo
    echo `logname`' ALL=(ALL) NOPASSWD:ALL' | sudo EDITOR='tee -a' visudo
fi

# Enable canonical repos
sed -i.bak "/^# deb [^cdrom].*/ s/^# //" /etc/apt/sources.list

# update the system
apt-get update

# upgrade the system
apt-get upgrade

# Disable apport
sed -i.bak "s/^enabled=[01]$/enabled=0/" /etc/default/apport
service apport restart

# Install package installers
apt-get install -y synaptic gdebi-core

# Install Ubuntu Wallpapers
apt-get install -y ubuntu-wallpapers-* ubuntukylin-wallpapers-* ubuntustudio-wallpapers

# Install Chromium-Browser
apt-get install -y chromium-browser

# Chrome Browser 64 bit Download and Install
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
gdebi google-chrome-stable_current_amd64.deb &

# Install Flash
apt-get install -y adobe-flashplugin

# Install multimedia codecs
apt-get install -y ubuntu-restricted-extras libavcodec-extra

# Install VLC Player
add-apt-repository ppa:videolan/master-daily
apt-get update
apt-get install -y vlc

# Install Dropbox
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd &

# Install archive utilities
apt-get install -y unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip plzip

# Install Guake
apt-get install -y guake guake-indicator

# Install shutter
add-apt-repository ppa:shutter/ppa
apt-get update
apt-get install -y shutter

