#!/bin/bash

sudo apt update
sudo apt upgrade  -y -f
sudo apt dist-upgrade  -y -f
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\
sudo apt update
sudo apt install -y -f nodejs yarn
sudo npm install -g pm2