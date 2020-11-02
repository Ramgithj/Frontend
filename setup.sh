#! /usr/bin/env bash
# install the frontend website

# configure nginx
sudo apt update
sudo apt install -y nginx
sudo cp nginx.conf /etc/nginx/nginx.conf

# copy files to installation folder
install_folder=/opt/bookshelve
sudo mkdir -p ${install_folder}
sudo rm -rf ${install_folder}/*
sudo cp -r . ${install_folder}

# reload nginx
sudo systemctl reload nginx
