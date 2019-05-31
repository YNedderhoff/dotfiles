#!/bin/bash

sudo apt-get update

# Docker 
# https://docs.docker.com/install/linux/docker-ce/debian/#install-docker-ce-1
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Raspotify 
# to enable Spotify Connect
# https://github.com/dtcooper/raspotify
curl -sL https://dtcooper.github.io/raspotify/install.sh | sh

# RetroPie
# https://github.com/RetroPie/RetroPie-Setup
cd
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
cd RetroPie-Setup
sudo ./retropie_setup.sh

# VNC Server
sudo apt-get install tightvncserver
