#!/bin/bash
yum update -y
yum install -y httpd.x86_64
systemctl start httpd
systemctl enable http
echo "$(curl http://x.x.x.x/latest/meta-data/local-ipv4)" > /var/www/html/index.html
