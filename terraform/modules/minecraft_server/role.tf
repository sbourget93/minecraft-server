resource "aws_iam_instance_profile" "ec2-minecraft-instance-profile" {
  name = "minecraft-instance-profile-${var.server_name}"
  role = "${aws_iam_role.ec2-minecraft-service-role.name}"
}

resource "aws_iam_role" "ec2-minecraft-service-role" {
  name = "minecraft-service-role-${var.server_name}"
  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
               "Service": "ec2.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "attach-associate-address" {
  role = "${aws_iam_role.ec2-minecraft-service-role.name}"
  policy_arn = "${aws_iam_policy.s3-backups.arn}"
}

resource "aws_iam_role_policy_attachment" "attach-s3-backup" {
  role = "${aws_iam_role.ec2-minecraft-service-role.name}"
  policy_arn = "${var.associate_address_policy_arn}"
}