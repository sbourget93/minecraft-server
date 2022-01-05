## Useful commands 

### To switch to root user (only use this user when required)
```
sudo su root
```

### To switch back to ec2-user
```
sudo su ec2-user
```

### To terminate the instance (run as root)
A fresh instance will spin up after about 5 minutes
```
shutdown -h now
```

### To stop the minecraft server (run as root)
```
ps -ef | grep [s]upervisord
# copy the pid of the supervisord process (the leftmost number)
kill pid_you_copied

ps -ef | grep [f]orge
# copy the pid of the forge process (the leftmost number)
kill pid_you_copied
```

### To start the minecraft server (run as root)
```
/usr/bin/supervisord -c /home/ec2-user/minecraft-server/supervisord.conf
```

### To generate a new world
```
# stop the server
rm -r ~/minecraft-server/minecraft/world/
# start the server
```

### To view the logs of the minecraft server
```
# view the logs in real time
tail -f /var/log/supervisord-minecraft-stdout.log

# view the last 100 lines of the log
tail -100 /var/log/supervisord-minecraft-stdout.log
```

### if the server isn't starting at all and there's no minecraft log file check these log files:
- /var/log/cloud-init.log
- /var/log/cloud-init-output.log
