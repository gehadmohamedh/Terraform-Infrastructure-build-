variable "VPC_CIDR" {
  type =  string 
  default = "10.0.0.0/16"
}
variable "PUBLIC_SUB_CIDR" {
  type = string 
}
variable "PRIVATE_SUB_CIDR" {
  type = string 
}
variable "PRIVATE2_SUB_CIDR" {
  type = string 
}
variable "AZ" {
  type =  string 
}
variable "AZ2" {
  type =  string 
}
variable "INSTANCE_TYPE" {
  type = string
}
variable "INSTANCE_AMI" {
  type = string
}