resource "azurerm_resource_group" "first_group" {
  naome = "pvcapuano"
  location = ""

  tags = ""
}

resource "azurerm_storage_account" "first_storage_account" {
  name                     = "pvcapuano"
  resource_group_name      = ""
  location                 = ""
  account_tier             = ""
  account_replication_type = ""

  tags = ""
}

resource "azurerm_storage_container" "first_container" {
  name                 =  ""
  storage_account_name = ""
}
