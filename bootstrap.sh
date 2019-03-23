# yum is updated in user-data script

yum install -y java-1.8.0
yum remove -y java-1.7.0-openjdk.x86_64

chown -R ec2-user /home/ec2-user/minecraft
chmod -R g+rwx /home/ec2-user/minecraft
chmod -R g+s /home/ec2-user/minecraft

easy_install supervisor
/usr/local/bin/supervisord -c /home/ec2-user/minecraft/supervisord.conf