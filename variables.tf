#mandatory,user should supply
variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
}

#optional,default value is t3.micro. user can always override
#t3,micro, t3.medium,t3.small
variable "instance_type" {
    default = "t3.micro"
    type = string
    validation {
        condition = contains(["t3.micro","t.medium","t3.small"], var.instance_type)
        error_message = "instance_type can only be one of t3.micro,t3.medium,t3.small"
    }
}

#mandatory, user should apply
variable "security_group_ids" {
    type = list(string)
    default = ["sg-0856f58788d55001f"]
}