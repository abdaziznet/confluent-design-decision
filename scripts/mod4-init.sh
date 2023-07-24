#!/bin/bash

# Nuke all running Docker containers
docker rm -f $(docker ps -aq) 1>/dev/null 2>&1
docker system prune -f --volumes 1>/dev/null

# Set docker environment to mod 4 activity start
cp /home/training/design-decisions/lab-init-files/large-message-size.yml /home/training/design-decisions/docker-compose.yml
