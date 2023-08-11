Swym Assignment Implementation

Hello everyone, I'm Sujan and this is my implementation.

Task 1: Implementation of Hello.py Script

    The hello.py script is provided as specified in Task 1.
    Dockerfile: Used for the build process.
    docker-compose.yml: Handles the deployment of containers.
    The prometheus-client library is installed to keep the container running for 2 days, acting as an HTTP server.

Task 2: Prometheus and Grafana Setup

    Prometheus and Grafana are installed as Docker containers.
    Prometheus is configured to target the container from Task 1, receiving metrics.
    Prometheus is added as a datasource in Grafana.
    A Grafana dashboard is configured to display CPU and memory usage.
    An alert is set up in Prometheus to trigger in case the app crashes.

Task 3: Automation Script (automate.sh)

The automate.sh shell script automates the setup:

    Detects the presence of Docker and Docker Compose and installs them if missing (distribution-dependent).
    Starts the hello.py container using docker-compose up.
    Waits for 2 days as required by Task 1.
    Gracefully shuts down the container.

