#!/bin/bash

## Script que instala todas as configurações base de plugins de maquina Linux Ubuntu, 
## mais utilizado em minhas implementações

#adduser robson
#usermod -aG sudo robson

sudo apt update
sudo apt install -y -f wget curl gcc g++ make nano vim git zsh python2 python3 certbot rar unzip zip unrar htop ffmpeg make build-essential