#! /bin/bash

sudo apt-get update

# Install some packages
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Add key to install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add repository
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

sudo apt-get update

# Install docker-ce
sudo apt-get install -y docker-ce

# Restart docker service
sudo systemctl enable docker
sudo systemctl start docker

# Create docker group
sudo groupadd docker
# Add user to docker group
sudo usermod -aG docker $USER

# Install docker-compose
sudo apt-get install -y docker-compose

# Ask uesr to reboot and run hello-world of docker
echo "Please reboot machine, 'sudo reboot'."
echo "After logining, run command, 'docker run hello-world'."
