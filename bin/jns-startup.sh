#!/bin/bash

cd /home/jns/jns
echo "y" | ./configure_jupyter.sh

cd ..
jupyter notebook &




