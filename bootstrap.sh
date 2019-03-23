# yum is updated in user-data script

yum install -y java-1.8.0
yum remove -y java-1.7.0-openjdk.x86_64

cd /
easy_install supervisor
/usr/local/bin/supervisord -c /home/ec2-user/minecraft/supervisord.conf

chmod -R 777 /home/ec2-user/minecraft