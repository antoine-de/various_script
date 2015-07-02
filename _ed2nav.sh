#!/bin/bash
# wrapper around ed2nav for lazy people
#ed2nav need to be in the path

set -e

if [ $1 ];
then
    dbname=$1
else
    dbname=$(basename $(pwd))
fi

ed2nav --connection-string="host=localhost user=navitia password=navitia dbname=$dbname"
