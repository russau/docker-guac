

``` bash
apt update --assume-yes
apt install docker.io --assume-yes
apt install docker-compose --assume-yes
usermod -a -G docker ubuntu

# installing acmetool https://github.com/hlandau/acme
# and creating certs
# sudo apt-get install acmetool

export RDP_PASSWORD='the real password'
export PSQL_PASSWORD='the real password'

docker-compose up -d
