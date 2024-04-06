#!/bin/bash

# cd to file path
cd "$(dirname "$0")" || return

cd ../scripts/ || return

cat ./create/*create*.sql > ./create_all.sql
cat ./insert/*insert*.sql > ./insert_all.sql
cat create.sql insert.sql > run.sql

# cleanup
#rm create.sql
#rm insert.sql