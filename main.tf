data "aws_route53_zone" "selected" {
    name = "${var.domain}"
}

resource "aws_route53_record" "mx-gsuite" {
    zone_id = "${data.aws_route53_zone.selected.zone_id}"
    name    = "${data.aws_route53_zone.selected.name}"

    type    = "MX"
    ttl     = "${var.ttl-gsuitemx}"
    records = [
        "1 ASPMX.L.GOOGLE.COM",
        "5 ALT1.ASPMX.L.GOOGLE.COM",
        "5 ALT2.ASPMX.L.GOOGLE.COM",
        "10 ALT3.ASPMX.L.GOOGLE.COM",
        "10 ALT4.ASPMX.L.GOOGLE.COM",
    ]
}

resource "aws_route53_record" "txt-gsuite" {
    zone_id = "${data.aws_route53_zone.selected.zone_id}"
    name    = "${data.aws_route53_zone.selected.name}"

    type    = "TXT"
    ttl     = "${var.ttl}"
    records = [ "${var.site-verification}" ]
}
