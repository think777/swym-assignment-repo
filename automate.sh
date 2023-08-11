#!/bin/bash

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Installing Docker..."
    # Install Docker (add any installation steps based on your OS)
    # For example, on Ubuntu:
    sudo apt-get update
    sudo apt-get install -y docker.io

fi

# Check if docker-compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "docker-compose is not installed. Installing docker-compose..."
    # Install docker-compose (add any installation steps based on your OS)
    # For example, on Ubuntu:
    sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi

# Navigate to the directory containing your docker-compose.yml file
cd /home/college/Documents/swym/doc2

# Start the Python container using docker-compose
docker-compose up -d

echo "Python container started using docker-compose."
