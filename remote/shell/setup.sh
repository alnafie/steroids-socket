#!/bin/bash

# general housekeeping
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install curl -y
sudo apt-get install build-essential -y

# git setup
sudo apt-get install git -y
git config --global user.name "Talal Alnafie"
git config --global user.email alnafie@gmail.com

# nvm / node setup
curl https://raw.github.com/creationix/nvm/master/install.sh | sh
nvm install 0.10	#need to restart terminal after installing nvm? yes, figure it out -TA
nvm alias default 0.10

# nginx setup
sudo apt-get install libpcre3 libpcre3-dev -y
sudo wget -P /usr/src http://nginx.org/download/nginx-1.4.3.tar.gz
cd /usr/src/ && sudo tar -xzvf nginx-1.4.3.tar.gz
cd /usr/src/nginx-1.4.3 && sudo ./configure
sudo make
sudo make install
sudo ln -s /usr/local/nginx/sbin/nginx /usr/sbin/nginx
sudo cp /usr/local/nginx/conf/nginx.conf /usr/local/nginx/conf/nginx.conf.default
sudo nginx

# redis setup
sudo apt-get install redis-server
sudo cp /etc/redis/redis.conf /etc/redis/redis.conf.default #to keep copy of redis .conf
