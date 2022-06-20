output "pk_ansible" {
  value = "${tls_private_key.pk.private_key_pem}"
  sensitive = true
}

output "host_ips" {
  value = "${module.docker_run_bor_test.ec2_validator_ips}"
}

output "ansible_inventory" {
  value = templatefile("${path.module}/ansible_inventory.tftpl",
    {
     hostnames = module.docker_run_bor_test.ec2_validator_ips[0]
    }
  )
}
