resource "aws_autoscaling_group" "minecraft" {
  name                      = "minecraft-autoscaling-group"
  max_size                  = 1
  min_size                  = 1
  desired_capacity          = 1
  launch_configuration      = "${aws_launch_configuration.minecraft.name}"
  availability_zones = ["us-east-2a", "us-east-2b", "us-east-2c"]
}