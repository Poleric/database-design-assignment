#!/bin/bash

# cd to file path
cd "$(dirname "$0")" || return

cd ../scripts/ || return

# remove old
rm create_all.sql insert_all.sql run.sql

awk '{print $0}' ./create/*.sql > create_all.sql
awk '{print $0}' ./insert/*.sql > insert_all.sql

awk '{print $0}' create_all.sql insert_all.sql > run.sql
