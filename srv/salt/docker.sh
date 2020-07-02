#!/bin/bash

sudo apt-get update
sudo apt-get install docker.io -y
sudo service docker start
sudo service docker enable

docker ps -a
docker run -d --restart unless-stopped redis
docker ps -a
