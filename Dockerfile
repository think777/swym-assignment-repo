# Use a lightweight Python image
FROM python:3.9-slim

# Set non-root user and create a working directory
RUN groupadd -r user && useradd -r -g user user
WORKDIR /app

RUN pip install prometheus_client
RUN pip install psutil


# Copy the Python script into the container
COPY hello.py .

# Set environment variable
ENV swym=test

# Switch to non-root user
USER user

# Run the Python script and keep the container running for 2 days
# Run a simple HTTP server to keep the container running

# Run the Python script and expose Prometheus metrics
CMD ["python", "hello.py"]