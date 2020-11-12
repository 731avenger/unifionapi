#!/bin/bash

#sudo nano /etc/dhcpcd.conf
##Static IP configuration:
#interface eth0
#static ip_address=192.168.1.210/24
##static ip6_address=fd51:42f8:caae:d92e::ff/64
#static routers=192.168.1.1
#static domain_name_servers=192.168.1.1 1.1.1.1 fd51:42f8:caae:d92e::1
#sudo reboot
## https://lazyadmin.nl/home-network/installing-unifi-controller-on-a-raspberry-pi-in-5-min/
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoremove && sudo apt-get autoclean
#sudo apt-get install haveged -y
sudo apt-get install openjdk-8-jre-headless -y
echo 'deb http://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ubnt.com/unifi/unifi-repo.gpg
sudo apt-get update; sudo apt-get install unifi -y
sudo systemctl stop mongodb
sudo systemctl disable mongodb
exit 0
