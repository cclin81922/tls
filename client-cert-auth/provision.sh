#!/bin/bash

set -eu
set -o pipefail

###

# install epel-release
yum -y install epel-release
yum -y update

###

# install apache http server
yum -y install httpd-2.4.6-67.el7.centos.6 mod_ssl-2.4.6-67.el7.centos.6

# copy configuration files from data dir
mkdir /etc/pki/self-signed
cp /vagrant/data/httpd/ssl.conf /etc/httpd/conf.d/ssl.conf
cp /vagrant/data/pki/server.key.pem /etc/pki/self-signed/server.key.pem
cp /vagrant/data/pki/server.cert.pem /etc/pki/self-signed/server.cert.pem
cp /vagrant/data/pki/ca.cert.pem /etc/pki/self-signed/ca.cert.pem

# start apache http server
systemctl start httpd # use port 80, 443

###

# install nginx http server
#yum -y install nginx

# copy configuration files from data dir
#TODO

# start apache http server
#sysmtemctl start nginx # use port 80, 443

###
