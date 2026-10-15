#!/bin/bash
dnf update -y
dnf install -y nginx
systemctl enable nginx
systemctl start nginx
echo "<h1>My Two-Tier Project is Live!</h1><p>Server: $(hostname -f)</p>" > /usr/share/nginx/html/index.html