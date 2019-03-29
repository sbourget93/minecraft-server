resource "aws_launch_configuration" "minecraft" {
  name = "minecraft-launch-configuration-${var.server_name}"
  image_id = "ami-0b59bfac6be064b78"
  instance_type = "c5.xlarge"
  key_name = "stephengb"
  security_groups = ["${var.security_group_ids}"]
  spot_price = ".05"
  user_data = <<EOF
    #!/bin/bash
    exec > /var/log/user-data.log 2>&1

    INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
    aws ec2 associate-address --instance-id $INSTANCE_ID --public-ip=${aws_eip.minecraft.public_ip} --region us-east-2

    echo ${var.server_name} > /tmp/server_name

    cd /home/ec2-user/
    sudo yum update -y
    sudo yum install git -y

    git clone https://github.com/sbourget93/minecraft-server.git
    cd minecraft/
    chmod +x ./bootstrap.sh
    ./bootstrap.sh ${var.server_name}
  EOF
  iam_instance_profile = "${aws_iam_instance_profile.ec2-minecraft-instance-profile.name}"
}