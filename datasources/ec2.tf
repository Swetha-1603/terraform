resource "aws_instance" "db" {

    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-010bed7b233b30d47"]
    instance_type = "t3.micro"
    tags = {
        name = "data-source-practice"
    }
}