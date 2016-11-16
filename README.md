# Development Environment based on Docker

### Requirements
Docker Native
[https://download.docker.com/mac/stable/Docker.dmg](https://download.docker.com/mac/stable/Docker.dmg)

### Usage
- Clone this repository `git clone git@bitbucket.org:vicemedia/laravel-dev-environment.git ./[your-project-name]`  
- Update the docker-compose.yml file:  
```
volumes_source:
  image: tianon/true
  volumes:
    #- /mnt/Development/DevOps/devbox/site:/var/www/starter
```
- Update your .env file  
```
DB_HOST=database
DB_PORT=3306
DB_DATABASE=homestead
DB_USERNAME=homestead
DB_PASSWORD=secret

MEMCACHED_HOST=memcached
CACHE_DRIVER=memcached
SESSION_DRIVER=memcached
```
- Run `./bin/dev.sh` from inside the `laravel-dev-environment`  
-  Visit [http://localhost](http://localhost) in your browser  

### Web Server
- After running the `./bin/dev.sh` command you will be able to visit your site at [http://localhost/](http://localhost/)
- You can edit the `src/web/vhost.conf` file `server_name` attribute to add your own named host. Don't forget to add this entry to your hosts file: `127.0.0.1 laravel-project.dev` in order for it to work. Then you can access your project at [http://laravel-project.dev](http://laravel-project.dev).

### Database Server
- if you want to change the name of your database, change the environment variable `MYSQL_DATABASE` in the service definition for mysql in the `docker-compose.yml` file.

- **Note** if you changed the database name after having built your environment, please run the `./bin/rebuild.sh` script.
- **Note** I would recommend leaving memcached off in development.

### Commands
These commands are located in the bin directory of the laravel-dev-environment directory of your project.

Use `./bin/dev.sh` to fire up the development environment.

Use `./bin/restart.sh` to restart the development environment.

Use `./bin/rebuild.sh` to rebuild the development environment.

Use `./bin/login.sh` to log in to your develpoment environment. Here you can perform such tasks as `php artisan migrate` or `vendor/bin/phpunit`.

Additionally there is a make file to provide easier access to container commands. You can run `make <command>` with any of the following:  
- migrate  
- test  
- artisan  
- doctrine-migrate  
- seed-dev  
- tinker  
