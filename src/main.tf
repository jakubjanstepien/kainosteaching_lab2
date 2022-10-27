resource "azurerm_resource_group" "resource_group" {
  name     = format("rg-%s-%s", var.name, var.instance)
  location = var.location
  tags     = var.tags
}