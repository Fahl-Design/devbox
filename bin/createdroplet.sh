#! /bin/sh
#
# This need only be run once
# This command accepts your access token, ssh key fingerprint, region, and box name as arguments
# eg. ./bin/createdroplet.sh access-token sshfingerprint nyc1 myproject

docker-machine create --driver digitalocean --digitalocean-access-token $1 --digitalocean-ssh-key-fingerprint $2 --digitalocean-region $3 $4
