locals {
  tags = {
    environment = var.instance
    source      = "kainosteaching_lab2"
    provisioner = "terraform"
    version     = var.release_version
    # App specific tags
    criticality = "Tier 3"
    OwnerName   = "Owner Name"
    org         = "Company Name"
    application = "Lab 2"
  }

  service_prefix = "lab2-name"
}

module "service" {
  source                   = "../src"
  name                     = local.service_prefix
  instance                 = var.instance
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = local.tags
}