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

ecs_services = [
  {
    key            = "mlops-ondrej-labs"
    ecr_repository = "mlops-repo-ondrej-labs"
    image_tag      = "latest"
    container_port = 80
    cpu            = 256
    memory         = 512
    desired_count  = 1
    tags           = {}
  }
]
