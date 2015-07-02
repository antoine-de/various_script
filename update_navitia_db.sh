#!/bin/bash
# very simple script to update the scheme of a navitia db
# if no argument is provided, update db with the same name than the current dir

set -e

if [ $1 ];
then
    dir_name=$1
else
    dir_name=$(basename $(pwd))
fi

navitia_dir=/home/antoine/dev/navitia/source/sql

db_owner=navitia
kraken_db_user_password=navitia
kraken_db_name=$dir_name

pushd $navitia_dir 

PYTHONPATH=. alembic -x dbname="postgresql://$db_owner:$kraken_db_user_password@localhost/$kraken_db_name" upgrade head

popd
