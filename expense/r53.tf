resource "aws_route53_record" "expense" {
    count = length(var.instance_names)
    zone_id = var.zone_id
    name = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
    type = "A"
    ttl = 1
    records = var.instance_names[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].public_ip]
    # if records already exists
    allow_overwrite = true
}