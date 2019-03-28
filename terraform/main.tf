provider "aws" {
  region = "us-east-2"
}

terraform {
    backend "s3" {
      bucket = "stephengb-minecraft"
      key = "terraform-state"
      region = "us-east-2"
    }
}

// This stuff is server agnostic and should exist regardless of server state.
module "global_infrastructure" {source = "./modules/global"}

module "minecraft_server_butt_land" { source = "./modules/minecraft_server"
  server_name = "butt_land"
  security_group_ids = "${module.global_infrastructure.security_group_ids}"
  associate_address_policy_arn = "${module.global_infrastructure.associate_address_policy_arn}"
}