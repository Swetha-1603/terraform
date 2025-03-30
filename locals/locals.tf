locals {

    ami_id =  "ami-09c813fb71547fc4f"
    sg_id = "sg-010bed7b233b30d47"
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
    tags = {
        name ="locals"
    }
}