#!/bin/bash

# EXIT if ERROR
set -e

# установка ruby b bundler
apt update
apt install ruby-full build-essential git wget -y
gem install --no-rdoc --no-ri bundler

#установка mongodb
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/4.2 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
apt update
apt-get install -y mongodb-org

#запуск mongodb
systemctl start mongod
systemctl enable mongod

#настройка сервиса raddit
wget https://raw.githubusercontent.com/upsysops/stuff/master/raddit.service
#chmod +x raddit.service
mv raddit.service /etc/systemd/system/raddit.service

