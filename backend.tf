terraform {
  backend "azurerm" {
    subscription_id      = "685dc6df-f715-40c9-91f3-ecf0aea044bd"
    resource_group_name  = "default"
    storage_account_name = "tfstatecwcontoso"
    container_name       = "tfstate"
    key                  = "tf-create-storage-container.tfstate"
    use_oidc             = true
  }
}
