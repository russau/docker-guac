

``` bash
apt update --assume-yes
apt install docker.io --assume-yes
apt install docker-compose --assume-yes
usermod -a -G docker ubuntu

# installing acmetool https://github.com/hlandau/acme
# and creating certs
# sudo apt-get install acmetool

# make .env file with
echo GUAC_PASSWORD='guacadmin's password' >> .env
POSTGRES_PASSWORD='postgres password' >> .env

docker-compose up -d
```
