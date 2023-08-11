#!/bin/bash

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Installing Docker..."
    # Install Docker (add any installation steps based on your OS)
    # For example, on Ubuntu:
    sudo apt-get update
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io

fi

# Check if docker-compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "docker-compose is not installed. Installing docker-compose..."
    # Install docker-compose (add any installation steps based on your OS)
    # For example, on Ubuntu:
    sudo apt-get install docker-compose-plugin
fi

# Navigate to the directory containing your docker-compose.yml file
cd /home/college/Documents/swym

# Start the Python container using docker-compose
docker-compose up -d

echo "Python container started using docker-compose."

# Sleep for the desired duration (e.g., 2 days)
sleep 2d

# Stop and remove the container
docker-compose down
