#!/bin/bash

echo $(date +%Y-%m-%dT%H:%M:%S) > /tmp/server_started_at

cd "$(dirname "$0")"
cd minecraft
java -Xmx6G -Xms6G -jar forge-1.7.10-10.13.4.1558-1.7.10-universal.jar nogui