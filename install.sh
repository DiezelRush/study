#!/bin/bash

sudo apt update -y
sudo apt upgrade -y

#Сервер SSH

sudo apt install openssh-server -y

#Кодеки:
 
sudo apt install ubuntu-restricted-extras -y


#Adobe Reader:

sudo apt install gdebi-core libxml2:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 libatk-adaptor:i386 -y
wget ftp://ftp.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i386linux_enu.deb
sudo dpkg -i AdbeRdr9.5.5-1_i386linux_enu.deb 


#REMMINA

sudo apt-add-repository ppa:remmina-ppa-team/remmina-next -y
sudo apt update -y
sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret remmina-plugin-spice -y


#Adobe Flash Player

sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner" -y
sudo apt update -y
sudo apt install adobe-flashplugin -y


#Раскладка клавиатуры в Ubuntu
sudo apt install gnome-tweaks -y


#Skype

wget -q -O - https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://repo.skype.com/deb stable main" > /etc/apt/sources.list.d/skype-stable.list' -y
sudo apt-get update && sudo apt-get install skypeforlinux -y


#TeamViewer

wget -O - https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://linux.teamviewer.com/deb stable main" >> /etc/apt/sources.list.d/teamviewer.list' -y
sudo apt update -y
sudo apt install teamviewer -y

#ksnip

sudo snap ksnip -y

#Kerio-kvc

wget https://cdn.kerio.com/dwn/kerio-control-vpnclient-linux-amd64.deb
sudo apt-get install debconf openssl -y
sudo dpkg -i kerio-control-vpnclient-linux-amd64.deb
systemctl enable kerio-kvc.service
systemctl start kerio-kvc.service

sudo apt update -y
sudo apt upgrade -y


