# Flask App - Dockerized 🐍🐳

A Python Flask web app, containerized following production best practices.

## What This Demonstrates
As a DevOps exercise: packaging a developer's Python application into a
production-ready container — proper base image, layer caching, and Compose.

## Run It
Visit http://localhost:5000
Health check: http://localhost:5000/health

## DevOps Practices Used
- Application Dockerfile (FROM python, WORKDIR, layered COPY for caching)
- Slim base image for smaller size
- .dockerignore to exclude unnecessary files
- Health check endpoint (/health)
- Docker Compose with build + restart policy

## Tech
- Python 3.12, Flask, Docker, Docker Compose