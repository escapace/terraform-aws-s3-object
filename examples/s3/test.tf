terraform {
  required_version = ">= 1.2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.64.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

data "aws_region" "default" {}

resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}

resource "aws_s3_bucket" "static_files" {
  bucket = "terraform-template-dir-test-${random_string.suffix.result}"
}

module "assets" {
  source  = "escapace/template-directory/null"
  version = "1.1.3"

  base_dir = "${path.module}/../src"
  template_vars = {
    name = "Josephine"
  }
}

module "s3_object" {
  source   = "../../"
  for_each = module.assets.files_on_disk

  bucket       = aws_s3_bucket.static_files.bucket
  region       = data.aws_region.default.name
  key          = each.key
  content_type = each.value.content_type
  path         = each.value.source_path
  metadata = {
    version = "1.0.0"
  }

  tags = {
    version = "1.0.0"
  }
}



# files_on_disk

# output "result" {
#   value = module.under_test
# }
