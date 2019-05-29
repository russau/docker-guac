#!/bin/bash
echo "Populating database"
DIR=`dirname "$0"` # https://stackoverflow.com/questions/59895/get-the-source-directory-of-a-bash-script-from-within-the-script-itself
sed "s/RDP_PASSWORD/$RDP_PASSWORD/g" $DIR/sql/initdb.sql | PGPASSWORD=$POSTGRES_PASSWORD psql -U postgres