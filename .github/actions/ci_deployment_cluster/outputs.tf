output "private_key" {
  value = "${module.docker_run_bor_test.pk_val}"
  sensitive = true
}
