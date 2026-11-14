#!/bin/bash
dnf update -y
dnf install -y docker
systemctl enable --now docker

docker run -d --restart unless-stopped -p 80:5000 --name flask-app omarkhafagy/flask-app:latest