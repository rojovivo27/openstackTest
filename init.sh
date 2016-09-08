#!/bin/sh

#Install Apache
sudo apt-get update
sudo apt-get install apache2 apache2-doc apache2-mpm-prefork apache2-utils libexpat1 ssl-cert -y


#Install php

sudo apt-get install libapache2-mod-php5 php5 php5-mcrypt -y
sudo service apache2 restart


#Copying landing page
wget https://raw.githubusercontent.com/rojovivo27/openstackTest/master/my-landing-page.html
sudo cp my-landing-page.html /var/www/html/index.html

wget https://raw.githubusercontent.com/rojovivo27/openstackTest/master/info.php
sudo cp info.php /var/www/html/info.php
