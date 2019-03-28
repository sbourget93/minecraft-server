output "security_group_ids" {
  value = [
    "${aws_security_group.http-outbound.id}",
    "${aws_security_group.https-outbound.id}",
    "${aws_security_group.ssh-anywhere.id}",
    "${aws_security_group.minecraft-anywhere.id}"
  ]
}

output "associate_address_policy_arn" {
  value = "${aws_iam_policy.associate-address.arn}"
}