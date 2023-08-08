#!/bin/bash

sudo apt update
sudo apt upgrade  -y -f
sudo apt dist-upgrade  -y -f
sudo apt install -y -f  mariadb-server redis-server
echo 'Switch to unix_socket authentication [Y/n] n'
echo 'Set root password? [Y/n] n'
echo 'Todos os restantes y'
sudo mysql_secure_installation