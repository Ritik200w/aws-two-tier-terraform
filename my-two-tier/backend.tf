terraform {
  backend "s3" {
    bucket       = "two-tier-tfstate-745404749079"
    key          = "two-tier/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
  }
}