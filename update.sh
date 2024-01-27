#!/bin/bash

update_system(){
	echo "ADDING REPOSITORIES"
	sudo apt-add-repository universe 
        echo -e "UPDATING AND UPGRADING"
        sudo apt update && sudo apt upgrade -y
        sudo apt autoremove -y
        echo -e "INSTALLING DEPENDENCIES"
	sudo apt install gcc make wget git python3 python3-pip dos2unix -y
        sudo apt install vim vlc firefox -y
	echo "1) Xfce\n2) Gnome\n3) KDE\ndefault) i3\nSelect a desktop environment: "
	read environment
	if [[ $environment == "1" ]]
	then
		sudo apt install xfce4 xfce4-goodies -y
	elif [[ $environment == "2" ]]
	then
		sudo apt install gnome -y
	elif [[ $environment == "3" ]]
	then
		sudo apt install kde-plasma-desktop -y
	else
		sudo apt install i3 -y
	fi
	echo -e "DONE"
}

