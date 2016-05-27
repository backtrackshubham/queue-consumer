# queue-consumer
A consumer for platform queues written in node. Run it on the command line.

## Installation

    npm install
    chmod +x consumer

## Usage
    ./consumer -v {VirtualHost} -u {UserName} -p {Password} -q {QueueName} -h {RabbitMQHost} -o {RabbitMQPort}
