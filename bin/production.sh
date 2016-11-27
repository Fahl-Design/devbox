#! /bin/sh
# ./bin/production.sh your-do-droplet

eval $(docker-machine env $1)
docker-compose --verbose -f ./docker-compose-production.yml up -d
