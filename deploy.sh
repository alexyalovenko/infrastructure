#!/bin/bash

set -e

# клонируем стабильную версию
git clone https://github.com/upsysops/raddit.git

#устанавливаем зависимости
cd raddit
bundle install

#запускаем сервис приложения и добавляем автозагрузку
sudo systemctl start raddit
sudo systemctl enable raddit
