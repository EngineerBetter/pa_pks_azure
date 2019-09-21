output "infrastructure_subnet_reserved" {
  value = "${cidrhost(module.infra.infrastructure_subnet_cidr, 1)}-${cidrhost(module.infra.infrastructure_subnet_cidr, 9)}"
}

output "services_subnet_reserved" {
  value = "${cidrhost(module.infra.services_subnet_cidr, 1)}-${cidrhost(module.infra.services_subnet_cidr, 9)}"
}

output "pks_subnet_reserved" {
  value = "${cidrhost(module.infra.pks_subnet_cidr, 1)}-${cidrhost(module.infra.pks_subnet_cidr, 9)}"
}

output "location" {
  value = "${var.location}"
}
