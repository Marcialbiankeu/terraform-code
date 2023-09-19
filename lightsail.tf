resource "aws_lightsail_instance" "example" {
  name              = "example-instance"
  availability_zone = "us-east-1a"

  user_data = <<-EOF
    #!/bin/bash
    sudo yum install httpd -y
    sudo systemctl start httpd
    sudo systemctl enable httpd
    sudo echo "<h1>This Server is created using Terraform</h1>" > /var/www/html/index.html
    EOF
}

