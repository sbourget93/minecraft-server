#!/bin/bash

echo $(date +%Y-%m-%dT%H:%M:%S) > /tmp/server_started_at

cd "$(dirname "$0")"
cd minecraft
java -Xmx1G -Xms1G -jar server.jar nogui -Dfml.queryResult=confirm