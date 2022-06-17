output "private_key" {
  value     = module.docker_run_bor_test.tls_private_key.pk.private_key_pem
  sensitive = true
}
