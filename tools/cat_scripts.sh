#!/bin/bash

# cd to file path
cd "$(dirname "$0")" || return

cat ../scripts/*create*.sql > ../create.sql
cat ../scripts/*insert*.sql > ../insert.sql

cd ..
cat create.sql insert.sql > run.sql

# cleanup
#rm create.sql
#rm insert.sql