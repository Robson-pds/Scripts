#!/bin/bash

sudo apt update
sudo apt upgrade  -y -f
sudo apt dist-upgrade  -y -f
sudo apt install -y -f  apache2 php libapache2-mod-php php php-all-dev certbot python3-certbot-apache
echo 'Dica de configuração'
echo 'https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-22-04'