server_name=$1

# yum is updated in user-data script

yum install -y java-1.8.0
yum remove -y java-1.7.0-openjdk.x86_64

pip install boto3==1.9.121

cd /home/ec2-user/minecraft-server/minecraft
aws s3 cp s3://stephengb-minecraft/$server_name/backups/latest-backup.zip . || true
unzip latest-backup.zip || true
rm latest-backup.zip

mkdir /home/ec2-user/minecraft-server/backups

mv /home/ec2-user/minecraft-server/forge-1.12.2-14.23.5.2854-installer.jar /home/ec2-user/minecraft-server/minecraft/forge-1.12.2-14.23.5.2854-installer.jar
cd /home/ec2-user/minecraft-server/minecraft
java -jar forge-1.12.2-14.23.5.2854-installer.jar --installServer

chown -R ec2-user /home/ec2-user/minecraft-server
chmod -R g+rwx /home/ec2-user/minecraft-server
chmod -R g+s /home/ec2-user/minecraft-server
chmod -R 777 /home/ec2-user/minecraft-server

echo '*/5 * * * * /home/ec2-user/minecraft-server/backup_world.sh && python /home/ec2-user/minecraft-server/copy_latest_backup.py'  >> /var/spool/cron/ec2-user

easy_install supervisor
/usr/local/bin/supervisord -c /home/ec2-user/minecraft-server/supervisord.conf