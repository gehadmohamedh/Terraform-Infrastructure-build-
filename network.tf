module "network_mod" {
  source           = "./network"
  VPC_CIDR         = var.VPC_CIDR
  PUBLIC_SUB_CIDR  = var.PUBLIC_SUB_CIDR
  PRIVATE_SUB_CIDR = var.PRIVATE_SUB_CIDR
  PRIVATE2_SUB_CIDR = var.PRIVATE2_SUB_CIDR
  AZ                = var.AZ
  AZ2               = var.AZ2
}
