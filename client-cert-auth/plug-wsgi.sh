#!/bin/bash

set -eu
set -o pipefail

###

# install wsgi
yum -y install mod_wsgi-3.4-12.el7_0

# copy configuration files and flask app from data dir
#TODO

# restart apache http server
systemctl restart httpd
