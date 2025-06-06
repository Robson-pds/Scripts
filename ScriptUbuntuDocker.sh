#!/bin/bash

sudo apt update
sudo apt install -y-f curl
curl -fsSL https://get.docker.com/ | sudo bash
sudo usermod -aG docker $USER
