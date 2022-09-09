 #!/usr/bin/bash

#####

# This is for the Steam Deck to enable openVPN in the network  #manager in Dekstop mode only!

# This script must be run after every update as Steam overwrites # system files on update

#####


#First, remove read only file protections to gain access to wiritng to system
echo "Removing read only protections Be prepared with your password"
sudo steamos-readonly disable

#After we verify pacman keys
echo "Preparing keyring"
sudo pacman-key --init
sudo pacman-key --populate

#Install the openvpn plugin
echo "Installing OpenVPN plugin"
sudo pacman -S networkmanager-openvpn

#Set steamos back to readonly as intended
echo "Setting SteamOS back to read only"
sudo steamos-readonly enable

echo "Done. Set up VPN through network manager and test"

