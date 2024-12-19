#!/bin/sh
docker compose up -d
sudo chmod -R 777 jenkins_home

docker exec -it --user root jenkins /bin/bash -c "\
  apt-get update -y && \
  apt-get install -y curl && \
  curl -fsSL https://get.docker.com | sh && \
  usermod -aG docker jenkins && \
  chmod -R 666 /var/run/docker.sock"
