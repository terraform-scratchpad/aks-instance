terraform {
  backend "azurerm" {
    storage_account_name  = "lvmhtfstate"
    container_name        = "tfstate"
    key                   = "test.kubernetes.tfstate"
  }
}

provider "azurerm" {
  version = "1.8.0"
}

module "azure-kubernetes" {
  source                      = "github.com/terraform-scratchpad/azure-kubernetes-module"
  location                    = "${var.location}"
  cluster_resource_group_name = "${var.cluster_rg_name}"
  nodes_count                 = "${var.nodes_count}"
  aks_cluster_name            = "${var.aks_cluster_name}"
  client_id                   = "${var.client_id}"
  client_secret               = "${var.client_secret}"
  ssh_key                     = "${var.ssh_key}"
}
