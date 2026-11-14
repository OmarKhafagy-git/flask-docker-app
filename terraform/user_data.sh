#!/bin/bash
dnf update -y
dnf install -y docker git
systemctl enable --now docker

git clone https://github.com/OmarKhafagy-git/flask-docker-app.git /opt/app
cd /opt/app
docker build -t flask-app .
docker run -d --restart unless-stopped -p 80:5000 --name flask-app flask-app