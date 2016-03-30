#!/bin/bash

cd "`dirname \"$0\"`"

sudo apt-get install -y git realpath pandoc

sudo deluser jns
echo | sudo adduser --disabled-login jns

# jns should be no sudoer nor ssh able
# sudo usermod -aG sudo,ssh jns

echo "y" | sudo -H -u jns ./jns-install.sh

ln -s -t "`realpath ..`" /home/jns/jns

sudo bash -c 'cd /home/jns/jns && ./install_jns.sh'

