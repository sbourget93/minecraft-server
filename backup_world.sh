#!/bin/bash

cd /home/ec2-user/minecraft-server/minecraft/
zip -r /home/ec2-user/minecraft-server/backups/backup-`date +%Y-%m-%dT%H:%M:%S.zip`  world

find /home/ec2-user/minecraft-server/backups/* -mmin +60 -delete
