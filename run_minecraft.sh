#!/bin/bash

echo $(date +%Y-%m-%dT%H:%M:%S) > /tmp/server_started_at

cd "$(dirname "$0")"
cd minecraft
java -Xmx5G -Xms5G -jar minecraft_server.1.14.jar nogui