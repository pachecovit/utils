#!/bin/bash
PHP_VERSION=$1
echo ""
echo "### INSTALL COMPOSER ON LOCAWEB SHARED HOSTS | Required: PHP > 5.3 ###"

if [ -z "$PHP_VERSION" ];
then
        echo "---->ERROR: [ Insert binary PHP version as parameter ]";
else
        echo "-----> STEP 1 [ INSTALLING COMPOSER ]"
        mkdir ~/bin
        cd ~/bin
        curl -sS https://getcomposer.org/installer | $PHP_VERSION -c ~/php.ini
        echo 'export PATH=~/bin:$PATH' >> ~/.bash_profile
        echo 'alias composer='\"$PHP_VERSION' -c ~/php.ini ~/bin/composer.phar $@"' >> ~/.bash_profile
        echo 'alias lss="ls $@ --color -hla"' >> ~/.bash_profile
        echo 'alias lsd="ls -la | sort -k 1"' >> ~/.bash_profile
        echo ">>>>>> COMPOSER INSTALLED [ ex: composer install vendor/package ] "
        echo ">>>>>> RESTART YOUR TERMINAL";
fi