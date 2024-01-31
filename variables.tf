variable "table_name" {
  default = "ddbtable"
  type = string
}

variable "billing_mode" {
  default = "PAY_PER_REQUEST"
  type=string
}

variable "hash_key" {
  default = "pk"
  type = string
}
variable "ttl"  {
  default = [{attribute_name= "TimeToExist", enabled=false}]
}


variable "range_key" {
  default = "sk"
  type = string
}



variable "attribute_type"{
  default = "S"
}

variable "ttl_enabled" {
  default = false
  type = bool
}

variable "environment" {
  default = "dev"
  type = string
}

