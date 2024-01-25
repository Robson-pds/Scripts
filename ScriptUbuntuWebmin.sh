#!/bin/bash

## Script que instala todas as configurações base de plugins de maquina Linux Ubuntu, 
## mais utilizado em minhas implementações, junto ao zsh e o ohmyzsh e alguns plugins
## Obs.: Apos instalar zedarma tem que digitar exit para o script continuar 

#adduser robson
#usermod -aG sudo robson

sudo apt update
sudo apt install -y -f wget curl
sudo su
echo 'deb http://download.webmin.com/download/repository sarge contrib' >>  /etc/apt/sources.list
exit
wget -q -O- http://www.webmin.com/jcameron-key.asc | sudo apt-key add

sudo apt update
sudo apt install -y -f webmin
