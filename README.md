# queue-consumer
A consumer for platform queues written in node. Run it on the command line.

## Installation

    npm install

## Usage

Virtual hosts for the platform always start with the word tenant. For example, if your tenant name is bitbrew, then your vhost name is tenantbitbrew.

Note: For production usage, the host and port for RabbitMQ are optional.

    ./consumer -v {VirtualHost} -u {UserName} -p {Password} -q {QueueName} --ack

Options
    -v, --vhost		RabbitMQ virtual host name
    -u, --user		Username
    -p, --password	Password
    -q, --queue		RabbitMQ queue name
    -h, --hostname	RabbitMQ hostname
    -o, --port		RabbitMQ port
    -a, --ack         Acknowledge messages and remove from queue

## Output
Logs connection information and events to standard output.

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

    ./consumer {add args} | tee file.txt
