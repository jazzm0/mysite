#!/bin/bash
set -e
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Exit Handler
function exit {
  echo "Stopping Docker Images"

  docker-compose down

  echo "Stopping Docker Images - Finished Cleanup"
}
trap exit EXIT

#docker-compose up -d
docker-compose up --build

# Wait forever

sleep 5
echo "Started Docker Images"
echo "RabbitMQ Access: http://localhost:15672/ (User: someUser / Password: Toor1234)"
echo "MongoDB Access: http://localhost:9501/"
echo "Postgres Access: http://localhost:9502/"
echo "Stack - Exit with CTRL+C"
while true; do sleep 86400; done