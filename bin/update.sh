#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade

packages_to_update=`pip list --outdated | grep -o -E '^[^ ]*? '`
echo "pip packages to upgrade: "$packages_to_update
sudo pip install --upgrade $packages_to_update
