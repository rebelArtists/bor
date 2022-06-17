provider "aws" {
  region = "us-east-2"
}

module "docker_run_bor_test" {
  source = "git@github.com:maticnetwork/terraform-multicloud-resources//aws/maticnetwork/modules/nodes/ci_nodes?ref=f2b8c0f"

  instance_count       = 1
  ami                  = "ami-0b9ecb12083282d75"
  instance_type        = "m5d.xlarge"
  instance_port        = 22
  instance_name_prefix = "node-docker"
  availability_zone    = "us-east-2a"
  ebs_vol_name         = "ebs"
  ebs_vol_size         = 500
  sec_group_name       = "sentry-networking-docker"
  key_name             = "aws_key_docker_ci"
  user_data            = filebase64("${path.module}/user_data.sh")
}
