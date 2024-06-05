#!/bin/bash
sudo docker swarm init --advertise-addr=192.168.1.190
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh
sudo docker service create --name my-web -p 80:80 --replicas=6 nginx
