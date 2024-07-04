module "s3-bucket" {
  source              = "cloudposse/s3-bucket/aws"
  version             = "3.1.0"
  s3_object_ownership = "BucketOwnerEnforced"
}# Copyright (c) HashiCorp, Inc.

policy "enforce-mandatory-tags" {
    enforcement_level = "soft-mandatory"
}

policy "restrict-deployment-cost" {
    enforcement_level = "soft-mandatory"
}

# policy "enforce-trusted-modules" {
#    enforcement_level = "advisory"
# }

module "tfplan-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfplan-functions/tfplan-functions.sentinel"
}
