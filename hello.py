from prometheus_client import start_http_server, Gauge
import time
import psutil

# Create Gauges for CPU usage and memory consumption
cpu_usage = Gauge('cpu_usage_percent', 'CPU Usage Percentage')
memory_usage = Gauge('memory_usage_percent', 'Memory Usage Percentage')

def get_metrics():
    while True:
        # Calculate CPU usage
        cpu_percent = psutil.cpu_percent(interval=1)

        # Calculate memory usage
        virtual_memory = psutil.virtual_memory()
        memory_percent = virtual_memory.percent

        # Set the metrics values
        cpu_usage.set(cpu_percent)
        memory_usage.set(memory_percent)

        time.sleep(5)

if __name__ == '__main__':
    # Start up the server to expose the metrics.
    print("Hello World")

    start_http_server(8000)

    # Start collecting and exposing metrics
    get_metrics()

    

    



