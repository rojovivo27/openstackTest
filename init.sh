#!/bin/sh

#Install Apache
sudo apt-get update
sudo apt-get install apache2 apache2-doc apache2-mpm-prefork apache2-utils libexpat1 ssl-cert -y

#Install mysql
echo mysql-server-5.1 mysql-server/root_password password pistones | debconf-set-selections
echo mysql-server-5.1 mysql-server/root_password_again password pistones | debconf-set-selections
apt-get install -y mysql-server
dpkg --get-selections | grep mysql

#Install php
sudo apt-get install libapache2-mod-php5 php5 php5-mcrypt php5-mysql -y
sudo service apache2 restart

#Install Composer
sudo apt install composer -y
composer require php-opencloud/openstack 

#Copying landing page
wget https://raw.githubusercontent.com/rojovivo27/openstackTest/master/my-landing-page.html
sudo cp my-landing-page.html /var/www/html/index.html
wget https://raw.githubusercontent.com/rojovivo27/openstackTest/master/info.php
sudo cp info.php /var/www/html/info.php
