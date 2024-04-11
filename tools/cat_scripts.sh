#!/bin/bash

# cd to file path
cd "$(dirname "$0")" || return

cd ../scripts/ || return

# remove old
rm create_all.sql create_trigger_all insert_all.sql run.sql 2> /dev/null

awk '{print $0}' ./create/*.sql > create_all.sql
awk '{print $0}' ./trigger/*.sql > create_trigger_all.sql
awk '{print $0}' ./insert/*.sql > insert_all.sql

awk '{print $0}' create_all.sql create_trigger_all.sql insert_all.sql > run.sql
