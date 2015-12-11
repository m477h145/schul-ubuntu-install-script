#!/bin/bash

sudo apt-add-repository -y ppa:libreoffice/ppa
sudo apt-add-repository -y ppa:webupd8team/y-ppa-manager
sudo apt-add-repository -y ppa:numix/ppa
wget -O - http://www.geogebra.net/linux/office@geogebra.org.gpg.key| apt-key add - 
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y vlc libreoffice y-ppa-manager geogebra44 scratch numix-icon-theme-circle firefox gimp audacity freemind inkscape librecad avidemux italc-master lame winbind libpam-winbind libpam-mount libnss-winbind samba-common-bin network-manager isc-dhcp-client cifs-utils smbclient cups
wget https://update.iserv.eu/debian/pool/main/i/iserv-client/iserv-client_15.10.20-1_all.deb
