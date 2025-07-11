#!/bin/bash

sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update -y
sudo apt-get install apache2 libapache2-mod-fcgid
sudo apt-get install libapache2-mod-php-8.4 # Não pode ter mais de um desse pacote instalado. Deixar aqui o padrão.
sudo apt install php{5.6,7.4,8.0,8.1,8.2,8.3,8.4}-{fpm,gd,curl,sybase,mysql,xml,zip,redis,sqlite3,mbstring}
sudo a2enmod actions fcgid alias proxy_fcgi
sudo systemctl start php{5.6,7.4,8.0,8.1,8.2,8.3,8.4}-fpm
sudo systemctl restart apache2

## Se instalar mais de uma versão do php utilizando o 'libapache2-mod-php-8.4' o apache não ira iniciar
# verificar por esse comando 'ls /etc/apache2/mods-enabled/ | grep php'
# E desativa por esse 'sudo a2dismod php7.4' exemplo desativando a versão 7.4

## Exemplo de configuração setando uma versão especifica para uma pasta. Nesse caso a versão 7.4
# /etc/apache2/sites-available/site1.your_domain.conf

# <VirtualHost *:80>
#      ServerAdmin admin@site1.your_domain
#      ServerName site1.your_domain
#      DocumentRoot /var/www/site1.your_domain
#      DirectoryIndex info.php
# 
#      <Directory /var/www/site1.your_domain>
#         Options Indexes FollowSymLinks MultiViews
#         AllowOverride All
#         Order allow,deny
#         allow from all
#      </Directory>
# 
#     <FilesMatch \.php$>
#       # For Apache version 2.4.10 and above, use SetHandler to run PHP as a fastCGI process server
#       SetHandler "proxy:unix:/run/php/php7.4-fpm.sock|fcgi://localhost"
#     </FilesMatch>
# 
#      ErrorLog ${APACHE_LOG_DIR}/site1.your_domain_error.log
#      CustomLog ${APACHE_LOG_DIR}/site1.your_domain_access.log combined
# </VirtualHost>