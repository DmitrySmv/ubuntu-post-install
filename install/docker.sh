#!/bin/bash

UBUNTU_NAME=$(lsb_release -cs)

if [ "$UBUNTU_NAME" == "zesty" ]; then
    UBUNTU_NAME="xenial"
fi

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $UBUNTU_NAME \
   stable"

sudo apt-get update

sudo apt-get install docker-ce

# Create the docker group.
sudo groupadd docker
# Add your user to the docker group.
sudo usermod -aG docker $USER

echo "Verify that you can run docker commands without sudo"
echo "RUN:"
echo "  \$ docker run hello-world"