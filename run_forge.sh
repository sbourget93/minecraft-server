#!/bin/bash

# echo $(date +%Y-%m-%dT%H:%M:%S) > /tmp/server_started_at

cd "$(dirname "$0")"
cd minecraft
java -Xmx6G -Xms6G -jar forge-1.12.2-14.23.3.2655-universal.jar nogui