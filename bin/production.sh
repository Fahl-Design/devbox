#! /bin/sh

eval $(docker-machine env fillrate)
docker-compose --verbose -f ./docker-compose-production.yml up -d
