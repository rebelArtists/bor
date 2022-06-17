output "private_key" {
  value = "${module.docker_run_bor_test.pk_val}"
  sensitive = true
}

resource "local_file" "AnsibleInventory" {
 content = templatefile("ansible_inventory.tmpl",
 {
  ips =  [for ip in module.docker_run_bor_test.ec2_validator_ips: ip]
 }
 )
 filename = "../ansible/dynamic_inventory"
}
