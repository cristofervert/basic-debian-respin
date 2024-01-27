#!/bin/bash

update_system(){
        echo -e "UPDATING AND UPGRADING"
        sudo apt update && sudo apt upgrade -y
        sudo apt autoremove -y
        echo -e "INSTALLING DEPENDENCIES"
	sudo apt install gcc make wget git python3 python3-pip dos2unix -y
        sudo apt install vim vlc thunar -y
	echo -e "DONE"
}

