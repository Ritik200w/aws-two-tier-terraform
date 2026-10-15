resource "aws_instance" "web" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public[0].id
  vpc_security_group_ids = [aws_security_group.web.id]
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name


  user_data                   = file("${path.module}/nginx-install.sh")
  user_data_replace_on_change = true

  metadata_options {
    http_tokens = "required"
  }

  tags = {
    Name = "${var.project_name}-web"
  }

}