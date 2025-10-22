locals {
  resource_group_name  = "${var.environment_name}-rg"
  storage_account_name = "${var.environment_name}storage"

  tags = {
    owner           = "Clemens Wältken"
    SecurityControl = "Ignore"
  }
}

resource "azurerm_resource_group" "default" {
  name     = local.resource_group_name
  location = var.location

  tags = local.tags

  lifecycle {
    ignore_changes = [tags["owner"]]
  }
}

module "storage" {
  source = "./modules/blobstorage"

  resource_group_name = azurerm_resource_group.default.name
  location            = azurerm_resource_group.default.location

  tags = local.tags
}

module "second" {
  source = "./modules/blobstorage"

  resource_group_name = azurerm_resource_group.default.name
  location            = azurerm_resource_group.default.location

  tags = local.tags
}

output "storage_account_id" {
  value = module.storage.storage_account_id
}

data "azurerm_client_config" "me" {
}
