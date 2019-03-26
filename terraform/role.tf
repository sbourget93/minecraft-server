resource "aws_iam_instance_profile" "ec2-minecraft-instance-profile" {
  name = "ec2-minecraft-instance-profile"
  role = "${aws_iam_role.ec2-minecraft-service-role.name}"
}

resource "aws_iam_role" "ec2-minecraft-service-role" {
  name = "ec2-minecraft-service-role"
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

resource "aws_iam_role_policy_attachment" "attach-associate-address-minecraft" {
  role       = "${aws_iam_role.ec2-minecraft-service-role.name}"
  policy_arn = "${aws_iam_policy.minecraft-policy.arn}"
}