locals {
  cp_arguments = [abspath(var.path), "s3://${var.bucket}/${var.key}"]

  cp_options = {
    "--acl"                 = var.acl
    "--storage-class"       = var.storage_class
    "--website-redirect"    = var.website_redirect
    "--content-type"        = var.content_type
    "--cache-control"       = var.cache_control
    "--content-disposition" = var.content_disposition
    "--content-encoding"    = var.content_encoding
    "--content-language"    = var.content_language
    "--metadata"            = length(var.metadata) == 0 ? null : jsonencode(var.metadata)
  }

  cp_command = <<-EOT
  aws s3 cp --no-progress ${join(" ", [for key, value in local.cp_options : "${key} '${value}'" if value != null])} ${join(" ", local.cp_arguments)}
  EOT

  tag_options = {
    "--bucket"  = var.bucket
    "--key"     = var.key
    "--tagging" = length(var.tags) == 0 ? null : jsonencode({ TagSet = [for key, value in var.tags : { "Key" = key, "Value" = value }] })
  }

  tag_command = <<-EOT
  aws s3api put-object-tagging ${join(" ", [for key, value in local.tag_options : "${key} '${value}'" if value != null])}
  EOT
}


resource "null_resource" "cp" {
  provisioner "local-exec" {
    command = local.cp_command

    environment = {
      AWS_REGION = var.region
    }
  }

  triggers = {
    timestamp = timestamp()
  }
}

resource "null_resource" "tag" {
  count = length(var.tags) == 0 ? 0 : 1

  provisioner "local-exec" {
    command = local.tag_command

    environment = {
      AWS_REGION = var.region
    }
  }

  triggers = {
    timestamp = timestamp()
  }

  depends_on = [
    null_resource.cp
  ]
}
