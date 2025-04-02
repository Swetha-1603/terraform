variable "instance_names" {
    type = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "common_tags" {
    type = map
    default = {
        project = "Expense"
        Terraform = "true"
    }
}

variable "domain_name" {
    default = "swetha.store"
}

variable "zone_id" {
    default = "Z03941393Q6LY940JYUHK"
}