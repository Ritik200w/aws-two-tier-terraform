region       = "ap-south-1"
project_name = "two-tier"

vpc_cidr = "10.0.0.0/16"

azs = ["ap-south-1a", "ap-south-1b"]

public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]


instance_type = "t3.micro"

db_name           = "appdb"
db_username       = "dbadmin"
db_instance_class = "db.t3.micro"