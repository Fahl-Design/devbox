#! /bin/sh
#
# This need only be run once

docker-machine create --driver digitalocean --digitalocean-access-token $1 --digitalocean-ssh-key-fingerprint df:47:0d:75:43:b1:b6:c3:1d:8b:89:f2:c3:5c:b7:01 --digitalocean-region fra1 fillrate
