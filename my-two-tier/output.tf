output "web_public_ip" {
  value = aws_instance.web.public_ip

}

output "web_url" {
  value = "http://${aws_instance.web.public_dns}"

}

output "db_endpoint" {
  value = aws_db_instance.main.address
}