#!/bin/bash

zip -r /home/ec2-user/minecraft-server/backups/Backup-world-`date +%Y-%m-%d--%H-%M.zip`  /home/ec2-user/minecraft-server/minecraft/world

find /home/ec2-user/minecraft-server/backups/* -mmin +1440 -delete