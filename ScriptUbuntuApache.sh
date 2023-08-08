#!/bin/bash

## Script que instala todas as configurações base de plugins de maquina Linux Ubuntu, 
## mais utilizado em minhas implementações, junto ao zsh e o ohmyzsh e alguns plugins
## Obs.: Apos instalar zedarma tem que digitar exit para o script continuar 

#adduser robson
#usermod -aG sudo robson

sudo apt update
sudo apt upgrade  -y -f
sudo apt dist-upgrade  -y -f
sudo apt install -y -f  apache2 php libapache2-mod-php php php-all-dev
echo 'Dica de configuração'
echo 'https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-22-04'