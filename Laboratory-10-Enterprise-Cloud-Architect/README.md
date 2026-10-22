## Laboratory 10 – Enterprise Cloud Architect: CLOUDNOVA WordPress Stack

## Overview
This repository is the handover manual for the client's IT team. It explains how to deploy, secure, and maintain a WordPress + MySQL 8.0 stack running on Docker Compose inside an Ubuntu Server VM (VirtualBox). The goal is that any engineer can rebuild, operate, and recover the system using only this documentation.

## Repository Contents
docker-compose.yml – WordPress and MySQL services with named volumes for the database and WordPress files
backup.sh – automated backup script for the database and site files
operational-manual.md – complete step-by-step operating procedures
FINAL-REFLECTION.md – reflection on the journey from Mission 1 to Mission 10

## Deploy
Connect to the VM through SSH (host port 2222 forwards to guest port 22).
Go to the project folder: cd ~/wp-stack
Start the stack: docker compose up -d
Open http://localhost:8080 to access the CLOUDNOVA site and finish the WordPress setup.

## Secure
UFW denies all incoming traffic by default and allows only SSH (22) and WordPress (8080):

sudo ufw default deny incoming
sudo ufw allow 22
sudo ufw allow 8080
sudo ufw enable
sudo ufw status verbose
Database credentials are kept inside the Compose configuration, and MySQL is not exposed outside the Docker network.

## Maintain
Backups: backup.sh is scheduled through cron and archives the database and WordPress volumes. Run it manually with bash backup.sh before any major change.
Updates: docker compose pull && docker compose up -d
Health checks: docker compose ps and docker compose logs -f
Restart: docker compose restart
Full stop: docker compose down (volumes and data are preserved)

## Recovery
If the site fails, restore the latest backup archive, run docker compose up -d, and verify the site at port 8080.


