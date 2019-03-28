resource "aws_iam_policy" "s3-backups" {
  name = "minecraft-s3-backups-${var.server_name}"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": [
                "s3:PutObject",
                "s3:GetObject"
            ],
            "Resource": [
                "arn:aws:s3:::stephengb-minecraft/${var.server_name}/backups/*"
            ]
        }
    ]
}
EOF
}