output "private_key" {
  value = "${module.docker_run_bor_test.pk_val}"
  sensitive = true
}

output "host_ips" {
  value = "${module.docker_run_bor_test.ec2_validator_ips}"
}

resource "local_file" "AnsibleInventory" {
 content = templatefile("${path.module}/ansible_inventory.tftpl",
   {
    hostnames = ["10.0.0.1", "10.0.0.2"]
   }
 )
 filename = "dynamic_inventory"
}
