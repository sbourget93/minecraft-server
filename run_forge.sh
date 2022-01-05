#!/bin/bash

SERVER_RAM=`cat /usr/etc/server_ram`

cd /home/ec2-user/minecraft-server/minecraft
java -Xmx${SERVER_RAM}G -Xms${SERVER_RAM}G -jar forge-1.16.5-36.2.20.jar nogui -Dfml.queryResult=confirm
