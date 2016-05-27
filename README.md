# queue-consumer
A consumer for platform queues written in node. Run it on the command line.

## Installation

    npm install

## Usage

    ./consumer -v {VirtualHost} -u {UserName} -p {Password} -q {QueueName} -h {RabbitMQHost} -o {RabbitMQPort}

### Alternate Usage

    node consumer -v {VirtualHost} -u {UserName} -p {Password} -q {QueueName} -h {RabbitMQHost} -o {RabbitMQPort}

## Output
Logs connection infromation and events to standard output.

### Example

    Connected.
    {
        "messageType": "CONNECT_MESSAGE",
        "message": {
            "serialNumber": "1234567890",
            "configVersion": "---",
            "firmwareVersion": "---",
            "latitude": 0,
            "longitude": 0,
            "fixQuality": "FixInvalid",
            "time": 1464361193,
            "offset": 240
        }
    }

### Fancy Output
Output the events to the terminal and to a file for storage.

    ./consumer {add args} tee file.txt
