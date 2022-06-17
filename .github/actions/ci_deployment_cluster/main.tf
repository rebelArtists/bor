provider "aws" {
  region = "us-east-2"
}

terraform {
  cloud {
    organization = "Polygon-Technology"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

module "docker_run_bor_test" {
  source = "git@github.com:maticnetwork/terraform-multicloud-resources//aws/maticnetwork/modules/nodes/ci_nodes?ref=808c823"

  instance_count       = 1
  ami                  = "ami-0b9ecb12083282d75"
  instance_type        = "m5d.xlarge"
  instance_port        = 22
  instance_name_prefix = "docker-ci-box"
  availability_zone    = "us-east-2a"
  ebs_vol_name         = "ebs"
  ebs_vol_size         = 500
  sec_group_name       = "networking-docker-ci"
  key_name             = "docker_ci_key"
  user_data            = filebase64("${path.module}/user_data.sh")
}
