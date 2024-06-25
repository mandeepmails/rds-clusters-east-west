terraform {
  backend "s3" {
    bucket = "pooja-project-rds"
    # key    = "path/to/my/key"
    region = "us-east-1"
    
  }
}
