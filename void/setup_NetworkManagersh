#!bin/bash
#setup NetworkManager as internet service daemon

#install NetworkManager
sudo xbps-install -Su NetworkManager

#disable network daemons to avoid conflicts
sudo rm /var/service/dhcpcd
sudo rm /var/service/wpa_supplicant
sudo rm /var/service/wicd

#enable dbus
sudo ln -s /etc/sv/dbus /var/service

#enable Networkmanager
sudo ln -s /etc/sv/NetworkManager /var/service

#done
echo "NetworkManager setup complete"
