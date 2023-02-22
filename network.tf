module "network" {
  source  = "app.terraform.io/stantec-flood-predictor/network/azurerm"
  version = "5.1.0"
  resource_group_name = azurerm_resource_group.myresourcegroup.name
  address_spaces      = ["10.0.0.0/16", "10.2.0.0/16"]
  subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  subnet_names        = ["subnet1", "subnet2", "subnet3"]

  use_for_each = true
  tags = {
    environment = "dev"
    costcenter  = "it"
  }
}
