provider "azurerm" {
  features {}
}

import {
    to = module.ecom-cosmos.azurerm_resource_group.ihong-lab-rg
    id = "/subscriptions/bdf4279b-9f60-4762-8593-8964e6bf727f/resourceGroups/ihong-lab-rg"
}

module "ecom-cosmos" {
  source          = "ianhong/ecom-cosmos/azurerm"
  version         = "1.0.4"
  db_name         = "ihong-paymentdb"
  ip_range_filter = ["97.113.108.197"]
  common_tags = {
    environment = "dev"
  }
}