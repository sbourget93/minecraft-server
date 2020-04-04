#!/bin/bash

echo $(date +%Y-%m-%dT%H:%M:%S) > /tmp/server_started_at

cd "$(dirname "$0")"
cd minecraft
java -Xmx6G -Xms6G -jar forge-1.15.2-31.1.35.jar nogui