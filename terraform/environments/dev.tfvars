environment = "dev"
aws_region  = "eu-west-1"


s3_buckets = [
  {
    key  = "mlops-data-ondrej-labs"
    tags = {}
  }
]

ecr_repositories = [
  {
    key                  = "mlops-repo-ondrej-labs"
    image_tag_mutability = "MUTABLE"
    image_scanning_configuration = {
      scan_on_push = true
    }
    tags = {}
  }
]
