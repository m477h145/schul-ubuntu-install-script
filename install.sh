#!/bin/bash

sudo apt-add-repository -y ppa:libreoffice/ppa
sudo apt-add-repository -y ppa:webupd8team/y-ppa-manager
sudo apt-add-repository -y ppa:numix/ppa
wget -O - http://www.geogebra.net/linux/office@geogebra.org.gpg.key| apt-key add - 
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y vlc libreoffice y-ppa-manager geogebra5 scratch numix-icon-theme-circle firefox gimp audacity freemind inkscape librecad avidemux italc-master lame winbind libpam-winbind libpam-mount libnss-winbind samba-common-bin network-manager isc-dhcp-client cifs-utils smbclient cups curl gedit
#curl -L -O https://update.iserv.eu/debian/pool/main/i/iserv-client/iserv-client_15.10.20-1_all.deb
#sudo dpkg -i iserv-client_15.10.20-1_all.deb
cd /etc/
curl -L -O https://github.com/m477h145/schul-ubuntu-install-script/raw/master/rc.local
curl -L -O https://github.com/m477h145/schul-ubuntu-install-script/raw/master/nsswitch.conf
cd /usr/share/lightdm/lightdm.conf.d/
curl -L -O https://github.com/m477h145/schul-ubuntu-install-script/raw/master/60-lightdm-gtk-greeter.conf
cd /etc/security/
curl -L -O https://github.com/m477h145/schul-ubuntu-install-script/raw/master/pam_mount.conf.xml
cd /etc/samba/
curl -L -O https://github.com/m477h145/schul-ubuntu-install-script/raw/master/smb.conf
echo "### Auto-download broken ###"
echo "### Firefox opening in a few seconds ###"
echo "### Then run file by: sudo dpkg -i [Filename].deb ###"
sleep 5
firefox https://update.iserv.eu/debian/pool/main/i/iserv-client/
