#!/bin/bash

# install httpd
yum install -y httpd
# change selinux permissions for the synced /var/www/html
chcon -R -t httpd_sys_content_t /var/www/html
# enable httpd, now it starts at boot
systemctl enable httpd.service
# start http daemon
systemctl start httpd.service

