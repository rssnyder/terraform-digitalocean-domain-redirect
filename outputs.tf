output "cname_value" {
  description = "The value set in the CNAME record."
  value       = digitalocean_record.this-cname.value
}

output "txt_name" {
  description = "The name of the TXT record."
  value       = digitalocean_record.this-txt.name
}

output "txt_value" {
  description = "The value set in the TXT record."
  value       = digitalocean_record.this-txt.value
}