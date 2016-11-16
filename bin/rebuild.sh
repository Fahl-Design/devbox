#! /bin/sh

echo "Rebuilding your docker containers. This could take a while . . ."
 docker-compose rm &&
 docker-compose pull &&
 docker-compose build --no-cache &&
 docker-compose up -d --force-recreate --remove-orphans
 