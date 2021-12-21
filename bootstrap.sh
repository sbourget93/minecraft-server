server_name=$1

# yum is updated in user-data script

#amazon-linux-extras install java-openjdk11

#pip install boto3==1.9.121

#cd /home/ec2-user/minecraft-server/minecraft
#aws s3 cp s3://stephengb-minecraft/$server_name/backups/latest-backup.zip . || true
#unzip latest-backup.zip || true
#rm latest-backup.zip

#chown -R ec2-user /home/ec2-user/minecraft-server
#chmod -R g+rwx /home/ec2-user/minecraft-server
#chmod -R g+s /home/ec2-user/minecraft-server

#echo '30 * * * * python /home/ec2-user/minecraft-server/copy_latest_backup.py'  >> /var/spool/cron/ec2-user

#easy_install supervisor
#/usr/local/bin/supervisord -c /home/ec2-user/minecraft-server/supervisord.conf