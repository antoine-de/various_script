#!/bin/bash
# wrapper around fusio2ed for lazy people
#fusio2ed need to be in the path

set -e

if [ $1 ];
then
    dbname=$1
else
    echo 
    dbname=$(basename $(pwd))
fi

fusio2ed --connection-string="host=localhost user=navitia password=navitia dbname=$dbname" -i $(pwd)/data/fusio

