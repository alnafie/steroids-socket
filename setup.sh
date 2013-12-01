#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
git config --global user.name "alnafie"
git config --global user.email alnafie@gmail.com
sudo apt-get install curl
curl https://raw.github.com/creationix/nvm/master/install.sh | sh 		# nvm
#need to restart terminal after installing nvm
nvm install 0.10
nvm alias default 0.10
sudo apt-get build-essential
sudo apt-get install nginx
sudo service nginx start #localhost:8080 working
# update-rc.d nginx defaults		#optional to add nginx to startup
sudo apt-get install redis-server
sudo cp /etc/redis/redis.conf /etc/redis/redis.conf.default #to keep copy of redis .conf
sudo cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.default #same for nginx