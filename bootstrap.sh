server_name=$1

#mkdir /home/ec2-user/minecraft-server/backups

# install java 17 which is needed for Minecraft 1.18
#wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm
#rpm -Uvh jdk-17_linux-x64_bin.rpm
#rm jdk-17_linux-x64_bin.rpm

#pip3 install boto3==1.20.25

#cd /home/ec2-user/minecraft-server/minecraft
#aws s3 cp s3://stephengb-minecraft/$server_name/backups/latest-backup.zip . || true
#unzip latest-backup.zip || true
#rm latest-backup.zip

#chown -R ec2-user /home/ec2-user/minecraft-server
#chmod -R g+rwx /home/ec2-user/minecraft-server
#chmod -R g+s /home/ec2-user/minecraft-server
#chmod -R 777 /home/ec2-user/minecraft-server


#echo '*/5 * * * * /home/ec2-user/minecraft-server/backup_world.sh' >> /var/spool/cron/ec2-user

#easy_install supervisor
#/usr/bin/supervisord -c /home/ec2-user/minecraft-server/supervisord.conf
