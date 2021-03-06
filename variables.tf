variable "location" {}
variable "cluster_rg_name" { default = "DIOR-AKS-TEST" }
variable "client_id" {}
variable "client_secret" {}
variable "ssh_key" {}
variable "aks_cluster_name" {
  default = "diordevaks"
}
variable "nodes_count" {
  default = "3"
}