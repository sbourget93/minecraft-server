#!/bin/bash

echo $(date +%Y-%m-%dT%H:%M:%S) > /tmp/server_started_at

cd "$(dirname "$0")"
cd minecraft
java -Xmx13G -Xms13G -jar forge-1.12.2-14.23.5.2854.jar nogui -Dfml.queryResult=confirm