

``` bash
apt update --assume-yes
apt install docker.io --assume-yes
apt install docker-compose --assume-yes
usermod -a -G docker ubuntu

# installing acmetool https://github.com/hlandau/acme
# and creating certs
# sudo apt-get install acmetool
docker run -d -p 80:80 -v $(pwd)/html:/usr/share/nginx/html --name bootstrap nginx:1.15-alpine
acmetool quickstart # point the webroot to html/.well-known/acme-challenge, setup cronjob

# a new certificate bounces the docker container
echo '#!/bin/sh' > /etc/acme/hooks/reload
echo 'docker restart dockerguac_nginx_1' >> /etc/acme/hooks/reload

# make .env file with
echo GUAC_PASSWORD='guacadmin's password' >> .env
echo POSTGRES_PASSWORD='postgres password' >> .env

docker-compose up -d
```
