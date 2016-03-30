#!/bin/bash

url=https://github.com/cdpoffline/jns.git

cd /home/jns
if [ -d jns ]
then
  cd jns
  git pull $url
  cd ..
else
  git clone $url
fi

cd jns
chmod +x *.sh

