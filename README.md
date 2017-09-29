## Synopsis
This repository has been created for **Docker** based Django development environment.

## Installation

1. Install Docker on your OS environment
  <https://docs.docker.com/engine/installation/>
2. `cd `**somewhere**
3. `mkdir `**somename** and `cd `**somename**
4. `git clone https://github.com/kneeprayer/ddmn.git`
5. `cp tmp.env .env` and fix .env file.
6. For Mac and Linux user : `chmod 755 bin/*.sh`
7. docker-compose up -d

## Login to Django container
* `sudo docker exec -i -t django /bin/bash`

## How to use it
### Only for Mac and Linux user
#### Use native Docker Command or Use this script.
* Start Docker containers  `bin/start-server.sh`  
* Stop Docker containers  `bin/stop-server.sh`  
* Build Docker containers  `bin/create-server.sh`    
* Delete Docker containers  `bin/delete-server.sh`   
  * If you want to delete MySQL database file also, you should remove data volume using `docker volume rm ddmn_db-data`

### for Windows user
#### Use native Docker Command.
* Start Docker containers  `docker-compose start`  
* Stop Docker containers  `docker-compose stop`  
* Make Docker containers  `docker-compose up -d`    
* Delete Docker containers  `docker-compose down`  

## Setting up a your Development Environment

If you want to change app or db version, you should fix **docker-compose.yml** file.  
  image: mysql:5.7.14  ->  image: mysql:5.6  

You can check docker version on the Docker Hub.  
  django : <https://hub.docker.com/_/python/>  
  Nginx : <https://hub.docker.com/_/nginx/>  
  Mysql : <https://hub.docker.com/_/mysql/>  
  phpmyadmin : <https://hub.docker.com/r/phpmyadmin/phpmyadmin/>  

## License
This project is licensed under the terms of the MIT license.
