#!/bin/bash

## Script que instala todas as configurações base de plugins de maquina Linux Ubuntu, 
## mais utilizado em minhas implementações, junto ao zsh e o ohmyzsh e alguns plugins
## Obs.: Apos instalar zedarma tem que digitar exit para o script continuar 

#adduser robson
#usermod -aG sudo robson

sudo apt update
sudo apt upgrade  -y -f
sudo apt dist-upgrade  -y -f
sudo apt install -y -f  nginx certbot python3-certbot-nginx