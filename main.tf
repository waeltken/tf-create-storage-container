locals {
  resource_group_name = "${var.environment_name}-rg"

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

data "azurerm_client_config" "me" {
}
