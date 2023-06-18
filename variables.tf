variable "region" {
  type        = string
  description = "The AWS region."
}

variable "path" {
  description = "Path to local file."
  type        = string
}

variable "bucket" {
  description = "The name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified."
  type        = string
}

variable "key" {
  description = "The name of the object once it is in the bucket."
  type        = string
}

variable "acl" {
  description = "The canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, and bucket-owner-full-control. Defaults to private."
  type        = string
  default     = null
}

variable "storage_class" {
  description = "Specifies the desired Storage Class for the object. Can be either STANDARD, REDUCED_REDUNDANCY, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE, or STANDARD_IA. Defaults to STANDARD."
  type        = string
  default     = null
}

variable "website_redirect" {
  description = "Specifies a target URL for website redirect."
  type        = string
  default     = null
}

variable "content_type" {
  description = "A standard MIME type describing the format of the object data, e.g. application/octet-stream. All Valid MIME Types are valid for this input."
  type        = string
  default     = null
}

variable "cache_control" {
  description = "Specifies caching behavior along the request/reply chain."
  type        = string
  default     = null
}

variable "content_disposition" {
  description = "Specifies presentational information for the object."
  type        = string # map?
  default     = null
}

variable "content_encoding" {
  description = "Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field."
  type        = string
  default     = null
}

variable "content_language" {
  description = "The language the content is in e.g. en-US or en-GB."
  type        = string
  default     = null
}

variable "metadata" {
  description = "A map of keys/values to provision metadata (will be automatically prefixed by x-amz-meta-, note that only lowercase label are currently supported by the AWS Go API)."
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "A map of tags to assign to the object."
  type        = map(string)
  default     = {}
}
