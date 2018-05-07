GSuite terraform module for AWS
===============================

A terraform module to setup the GSuite infrastructure in your AWS account.

If you use the GSuite, you need to change the MX and TXT in your DNS to receive
your emails and to verify that you own the domain.

If you use AWS Route53 to manage your DNS resources, this terraform module will
automatically setup your Route53 with the configuration to use GSuite.

Input variables
---------------

- `domain` - The domain registered in your Route53 zone
- `site-verification` - The site-verification string provided by GSuite
- `ttl` - TTL to TXT record
- `ttl-gsuitemx` - TTL to MX record

Usage
-----

This is a short example on how you can use the module in a simple template file,
e.g. `main.tf`.

```
module "gsuite" {
    source = "github.com/fallertsen/terraform-module-aws-gsuite"

    domain = "example.com"
    site-verification = "google-site-verification=AbCdEfGhIjKlMnOpQrStUvWxYz"
    ttl = "3600"
    ttl-gsuitemx = "172800"
}
```
