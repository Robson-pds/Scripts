#!/bin/bash

sudo apt update
sudo apt install -y-f curl
curl -fsSL https://get.docker.com/ | sudo bash
sudo groupadd docker
sudo usermod -aG docker $USER