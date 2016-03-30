#!/bin/bash

sudo apt-get install -y pandoc
sudo apt-get install -y git

sudo deluser jns
echo | sudo adduser --disabled-login jns

sudo usermod -aG sudo,ssh jns

sudo -H -u jns ./jns-install.sh

sudo bash -c 'cd /home/jns/jns && ./install_jns.sh'

