#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo service httpd start  
echo "<h1>Welcome to EC2 Instance Module! AWS created using Terraform in eu-west-2 Region</h1>" | sudo tee /var/www/html/index.html