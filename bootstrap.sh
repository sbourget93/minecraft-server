# yum is updated in user-data script

yum install -y java-1.8.0
yum remove -y java-1.7.0-openjdk.x86_64

pip install boto3==1.9.121

cd /home/ec2-user/minecraft/minecraft
mkdir world
cd world
aws s3 cp s3://stephengb-minecraft/backups/latest-backup.zip . || true
unzip latest-backup.zip || true
rm latest-backup.zip || true

chown -R ec2-user /home/ec2-user/minecraft
chmod -R g+rwx /home/ec2-user/minecraft
chmod -R g+s /home/ec2-user/minecraft

crontab /home/ec2-user/minecraft/crontab.config

easy_install supervisor
/usr/local/bin/supervisord -c /home/ec2-user/minecraft/supervisord.conf