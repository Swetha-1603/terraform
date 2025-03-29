# 1. command line first priority for variables declaration
#2. tfvars
# 3. environment variable
# 4. variable default values
variable "image_id" {
    type        = string 
    default     = "ami-09c813fb71547fc4f"
    description = "RHEL-9 ID"
}   

variable "instance_type" {
    type        = string 
    default     = "t3.micro"
}   

variable "tags" {
    default = {
        project = "Expense"
        Environment = "Dev"
        Module = "DB"
        Name= "DB"
    }
}

variable "sg_name"{
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "project" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}