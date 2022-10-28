locals {
  tags = {
    environment = var.instance
    source      = "kainosteaching_lab2"
    provisioner = "terraform"
    version     = var.release_version
    # App specific tags
    criticality = "Tier 3"
    OwnerName   = "ZSP"
    org         = "ZSP"
    application = "Lab_2"
  }

  service_prefix = "lab2-initials"
}

module "service" {
  source                   = "../src"
  name                     = local.service_prefix
  instance                 = var.instance
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = local.tags
}