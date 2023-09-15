variable "ami" {
  type        = list(string)
  description = "AMI id of instance"

}
variable "ins_type" {
  type        = list(string)
  description = "instance type"

}

variable "name" {
  type        = list(string)
  description = "name of instance"
}

variable "owner" {
  type        = list(string)
  description = "owner of instance"
}