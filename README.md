# Digital Ocean Domain Redirect Terraform Module

Terraform module which redirects a domain in digitalocean to another URL

## Usage

```hcl
module "music" {
  source = "github.com/rssnyder/digitalocean_domain_redirect?ref=v0.1.0"

  domain    = "rileysnyder.org"
  subdomain = "music"
  url       = "https://music.youtube.com/channel/UCb4yhRr7Pucxv3lb_GgGeUg"
}
```

Redirects [music.rileysnyder.org](http://music.rileysnyder.org) to [music.youtube.com/channel/UCb4yhRr7Pucxv3lb_GgGeUg](https://music.youtube.com/channel/UCb4yhRr7Pucxv3lb_GgGeUg)

## How it works

[redirect.name](http://redirect.name/)

Normally a CNAME record can only redirect to another **domain** and not a full URL with paths.

You must specify a domain that is already registered in your digital ocean account.

## Resources

| Name | Type |
|------|------|
| [digitalocean_record.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/record) | resource |
| [digitalocean_record.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| [domain](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/domain) | The name of the domain. | `string` | | yes |
| [subdomain](https://en.wikipedia.org/wiki/Subdomain) | The subdomain to use for the redirect. | `string` | | yes |
| [url](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_URL) | The full URL to redirect to. Schema included. | `string` | | yes |

## Outputs

| Name | Description |
|------|-------------|
| [cname_value](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/record) | The value set in the CNAME record. |
| [txt_name](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/record) | The name of the TXT record. |
| [txt_value](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/record) | The value set in the TXT record. |
