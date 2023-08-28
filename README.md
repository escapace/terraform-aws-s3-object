<!-- BEGIN_TF_DOCS -->

## Resources

| Name                                                                                                       | Type     |
| ---------------------------------------------------------------------------------------------------------- | -------- |
| [null_resource.cp](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource)  | resource |
| [null_resource.tag](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name                | Description                                                                                                                                                                                   | Type          | Default | Required |
| ------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------- | ------- | :------: |
| acl                 | The canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, and bucket-owner-full-control. Defaults to private.  | `string`      | `null`  |    no    |
| bucket              | The name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified.                                                                                            | `string`      | n/a     |   yes    |
| cache_control       | Specifies caching behavior along the request/reply chain.                                                                                                                                     | `string`      | `null`  |    no    |
| content_disposition | Specifies presentational information for the object.                                                                                                                                          | `string`      | `null`  |    no    |
| content_encoding    | Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.      | `string`      | `null`  |    no    |
| content_language    | The language the content is in e.g. en-US or en-GB.                                                                                                                                           | `string`      | `null`  |    no    |
| content_type        | A standard MIME type describing the format of the object data, e.g. application/octet-stream. All Valid MIME Types are valid for this input.                                                  | `string`      | `null`  |    no    |
| key                 | The name of the object once it is in the bucket.                                                                                                                                              | `string`      | n/a     |   yes    |
| metadata            | A map of keys/values to provision metadata (will be automatically prefixed by x-amz-meta-, note that only lowercase label are currently supported by the AWS Go API).                         | `map(string)` | `{}`    |    no    |
| path                | Path to local file.                                                                                                                                                                           | `string`      | n/a     |   yes    |
| region              | The AWS region.                                                                                                                                                                               | `string`      | n/a     |   yes    |
| storage_class       | Specifies the desired Storage Class for the object. Can be either STANDARD, REDUCED_REDUNDANCY, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE, or STANDARD_IA. Defaults to STANDARD. | `string`      | `null`  |    no    |
| tags                | A map of tags to assign to the object.                                                                                                                                                        | `map(string)` | `{}`    |    no    |
| website_redirect    | Specifies a target URL for website redirect.                                                                                                                                                  | `string`      | `null`  |    no    |

<!-- END_TF_DOCS -->
