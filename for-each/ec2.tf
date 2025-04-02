resource "aws_instance" "expense" {
for_each = var.instance_names # eack.key and eack.value
ami = data.aws_ami.ami_info.id
vpc_security_group_ids = ["sg-010bed7b233b30d47"]
instance_type = each.value
tags = merge (
    var.common_tags,
    {
        Name= each.key
        module = each.key
    }
)
}