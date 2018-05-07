variable "domain" {
    description = "Domain registered in the hosted zone on Route 53"
}

variable "site-verification" {
    description = "Site verification given by GSuite to be added as TXT type on DNS"
}

variable "ttl" {
    description = "TTL time to TXT record"
}

variable "ttl-gsuitemx" {
    description = "TTL time to MX record"
}
