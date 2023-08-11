#!/bin/bash

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Installing Docker..."
    # Install Docker (add any installation steps based on your OS)
    # For example, on Arch:
    yay docker

fi

# Check if docker-compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "docker-compose is not installed. Installing docker-compose..."
    # Install docker-compose (add any installation steps based on your OS)
    # For example, on Arch:
    yay docker-compose
fi

# Navigate to the directory containing your docker-compose.yml file
cd /home/college/Documents/swym

# Start the Python container using docker-compose
sudo docker-compose up -d

echo "Python container started using docker-compose."


# Sleep for the desired duration (e.g., 2 days)
sleep 2d

# Stop and remove the container
docker-compose down