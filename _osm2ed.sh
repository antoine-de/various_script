#!/bin/bash
# wrapper around osm2ed for lazy people
#osm2ed need to be in the path

set -e

if [ $1 ];
then
    dbname=$1
else
    echo 
    dbname=$(basename $(pwd))
fi

osm2ed --connection-string="host=localhost user=navitia password=navitia dbname=$dbname" -i $(pwd)/data/osm

