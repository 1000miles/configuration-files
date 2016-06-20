#!/usr/bin/env bash

# Set locale
update-locale LC_ALL=en_US.utf8

# Prevent set up interactive input dialogue while booting
export DEBIAN_FRONTEND=noninteractive

# Install core dependencies
apt-get update
apt-get install -y vim git build-essential python-software-properties curl wget unzip

# Install dev libraries
apt-get update
apt-get install -y zlib1g-dev libssl-dev libreadline-dev libyaml-dev

# Set up Node
apt-get update
curl -sL https://deb.nodesource.com/setup_4.x | bash


# Install nodejs
apt-get update
apt-get install -y nodejs

# Set up Imagemagick
apt-get update
apt-get install imagemagick libmagick++-dev

# Set up Oh-my-Zsh
apt-get update
apt-get install -y zsh
curl -L http://install.ohmyz.sh | sh

# Set up Bundler
gem install bundler
bundle install

# Set up nginx
apt-get update
apt-get install nginx

# Set up postgreSQL
apt-get update
apt-get install -y postgresql libpq-dev

# Set up mySQL
apt-get update
apt-get install -y mysql-server mysql-client libmysqlclient-dev
# => mysql_install_db # generate directory structure
# => mysql_secure_installation # run security script
# => sudo service mysql start
# => sudo service mysql status

# Set up NFS mount (vagrant)
apt-get update
apt-get install -y nfs-kernel-server # host
apt-get install -y nfs-common portmap # client

# Add vim as editor
update-alternatives --config editor

# Removes unused and old packages
apt-get autoremove
