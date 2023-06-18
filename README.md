<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3.2.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.cp](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [null_resource.tag](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket"></a> [bucket](#input\_bucket) | The name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified. | `string` | n/a | yes |
| <a name="input_key"></a> [key](#input\_key) | The name of the object once it is in the bucket. | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | Path to local file. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The AWS region. | `string` | n/a | yes |
| <a name="input_acl"></a> [acl](#input\_acl) | The canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, and bucket-owner-full-control. Defaults to private. | `string` | `null` | no |
| <a name="input_cache_control"></a> [cache\_control](#input\_cache\_control) | Specifies caching behavior along the request/reply chain. | `string` | `null` | no |
| <a name="input_content_disposition"></a> [content\_disposition](#input\_content\_disposition) | Specifies presentational information for the object. | `string` | `null` | no |
| <a name="input_content_encoding"></a> [content\_encoding](#input\_content\_encoding) | Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. | `string` | `null` | no |
| <a name="input_content_language"></a> [content\_language](#input\_content\_language) | The language the content is in e.g. en-US or en-GB. | `string` | `null` | no |
| <a name="input_content_type"></a> [content\_type](#input\_content\_type) | A standard MIME type describing the format of the object data, e.g. application/octet-stream. All Valid MIME Types are valid for this input. | `string` | `null` | no |
| <a name="input_metadata"></a> [metadata](#input\_metadata) | A map of keys/values to provision metadata (will be automatically prefixed by x-amz-meta-, note that only lowercase label are currently supported by the AWS Go API). | `map(string)` | `{}` | no |
| <a name="input_storage_class"></a> [storage\_class](#input\_storage\_class) | Specifies the desired Storage Class for the object. Can be either STANDARD, REDUCED\_REDUNDANCY, ONEZONE\_IA, INTELLIGENT\_TIERING, GLACIER, DEEP\_ARCHIVE, or STANDARD\_IA. Defaults to STANDARD. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the object. | `map(string)` | `{}` | no |
| <a name="input_website_redirect"></a> [website\_redirect](#input\_website\_redirect) | Specifies a target URL for website redirect. | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->