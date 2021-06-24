terraform {
  required_providers {
    # Provider source is used for Terraform discovery and installation of
    # providers. Declare source for all providers required by the module.
    local = {
      source = "hashicorp/local"
      version = ">= 2.1.0"
    }
  }
}

resource "local_file" "greeting" {
  content = "Hello!"
  filename = "greetings.txt"
}

resource "local_file" "greeting_services" {
  for_each = var.services
  content = "Hello, ${each.value.name}!"
  filename = "greetings_${each.value.name}.txt"
}
