#!/bin/bash
# wrapper around geopal2ed for lazy people
#geopal2ed need to be in the path

set -e

if [ $1 ];
then
    dbname=$1
else
    echo 
    dbname=$(basename $(pwd))
fi

geopal2ed --connection-string="host=localhost user=navitia password=navitia dbname=$dbname" -i $(pwd)/data/geopal

