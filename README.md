

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

# populating the database
sed "s/RDP_PASSWORD/$RDP_PASSWORD/g" schema/initdb.sql | docker-compose exec -T -e PGPASSWORD=$PSQL_PASSWORD postgres psql -h postgres -U postgres

# this works better on instruqt
sed "s/RDP_PASSWORD/$RDP_PASSWORD/g" schema/initdb.sql | docker exec -i -e PGPASSWORD=abc docker-guac_postgres_1 psql -h postgres -U postgres
```
