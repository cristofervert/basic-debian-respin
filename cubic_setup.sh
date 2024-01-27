#!/bin/bash

echo "INSTALLING CUBIC"
sudo apt-add-repository universe
sudo apt-add-repository ppa:cubic-wizard/release
sudo apt install --no-install-recommends cubic
echo "CUBIC INSTALLED"
