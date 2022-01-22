data "digitalocean_domain" "this" {
  name = var.domain
}

resource "digitalocean_record" "this-cname" {
  domain = data.digitalocean_domain.this.name
  type   = "CNAME"
  name   = var.subdomain
  value  = "alias.redirect.name."
}

resource "digitalocean_record" "this-txt" {
  domain = data.digitalocean_domain.this.name
  type   = "TXT"
  name   = "_redirect.${var.subdomain}"
  value  = "Redirects from /* to ${var.url}/*"

  depends_on = [digitalocean_record.this-cname]
}