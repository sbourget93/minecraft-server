resource "aws_route53_record" "minecraft" {
  zone_id = "Z2154OD2APCP1Z"
  name = "${var.server_name}.stephengb.com"
  type = "A"
  ttl = "300"
  records = ["${aws_eip.minecraft.public_ip}"]
}