#!/bin/bash

cd /home/ec2-user/minecraft-server/minecraft/
zip -r /home/ec2-user/minecraft-server/backups/Backup-world-`date +%Y-%m-%d--%H-%M.zip`  world

find /home/ec2-user/minecraft-server/backups/* -mmin +60 -delete