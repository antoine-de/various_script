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

if [ $2 ];
then
    osm_file=$2
else
    
    data_dir=$(pwd)/data/osm
    
    osm_file=$(ls $data_dir/*pbf)
    
    if [ -z $osm_file ];
    then
        echo "several osm files, choose"
        exit 1
    fi
fi

osm2ed --connection-string="host=localhost user=navitia password=navitia dbname=$dbname" -i $osm_file

