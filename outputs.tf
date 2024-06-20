output "instance_ip" {
value = aws_instance.example.public_ip
}

output "rds_arn" {
value = aws_db_instance.default.arn
}