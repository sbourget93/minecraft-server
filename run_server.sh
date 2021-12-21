#!/bin/bash

echo $(date +%Y-%m-%dT%H:%M:%S) > /tmp/server_started_at

cd "$(dirname "$0")"
cd /home/ec2-user/minecraft-server/minecraft/
java -Xmx5G -Xms5G -jar server.jar nogui