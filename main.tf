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
  content = "${join("\n", [
    for _, service in var.services : "Hello, ${service.name}!"
  ])}\n"
  filename = "services_greetings.txt"
}
