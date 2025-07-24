terraform {
  backend "s3" {
    bucket       = "new-state-temp"
    key          = "usecase9/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = false
  }
}
