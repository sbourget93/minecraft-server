server_name=$1
server_ram=`cat /usr/etc/server_ram`

mkdir /home/ec2-user/minecraft-server/backups

# install java 11
amazon-linux-extras install java-openjdk11

pip3 install boto3==1.20.25

cd /home/ec2-user/minecraft-server/minecraft
aws s3 cp s3://stephengb-minecraft/$server_name/backups/latest-backup.zip . || true
unzip latest-backup.zip || true
rm latest-backup.zip

# copy hats-server config to the correct location. This will overwrite the world backup one
mkdir -p /home/ec2-user/minecraft-server/minecraft/world/serverconfig
mv -f /home/ec2-user/minecraft-server/hats-server.toml /home/ec2-user/minecraft-server/minecraft/world/serverconfig/hats-server.toml

mv /home/ec2-user/minecraft-server/forge-1.16.5-36.2.20-installer.jar /home/ec2-user/minecraft-server/minecraft/forge-1.16.5-36.2.20-installer.jar
cd /home/ec2-user/minecraft-server/minecraft
java -jar forge-1.16.5-36.2.20-installer.jar --installServer

# make ec2-user owner of everything in the minecraft-server directory
chown -R ec2-user /home/ec2-user/minecraft-server
chmod -R 700 /home/ec2-user/minecraft-server

# schedule backup jobs
echo '*/5 * * * * /home/ec2-user/minecraft-server/backup_world.sh && python3 /home/ec2-user/minecraft-server/upload_backup.py latest' >> /var/spool/cron/ec2-user
echo '0 * * * * python3 /home/ec2-user/minecraft-server/upload_backup.py persistent' >> /var/spool/cron/ec2-user

easy_install supervisor
# supervisor runs 'run_forge.sh' as ec2-user
/usr/bin/supervisord -c /home/ec2-user/minecraft-server/supervisord.conf
