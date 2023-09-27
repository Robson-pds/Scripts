#!/bin/bash

## Script que instala todas as configurações base de plugins de maquina Linux Ubuntu, 
## mais utilizado em minhas implementações, junto ao zsh e o ohmyzsh e alguns plugins
## Obs.: Apos instalar zedarma tem que digitar exit para o script continuar 

#adduser robson
#usermod -aG sudo robson

sudo apt update
sudo apt install -y -f wget curl

sudo apt update
sudo apt upgrade  -y -f
sudo apt dist-upgrade  -y -f
sudo apt install -y -f gcc g++ make nano vim git zsh python2 python3 certbot rar unzip zip unrar htop ffmpeg make build-essential rake
sudo apt update

sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh`" -s ask

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo 'source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh' >> .zshrc
