## Consul-Terraform-Sync Test Module - Hello

This Terraform module creates multiple text files, a static file and a file for each Consul service. This is used to test [Consul Terraform Sync](https://www.consul.io/docs/nia). It is especially useful for test cases where a task is applied but the services variable is not initiated.

## Feature

This module uses the `local` Terraform provider to create one file `greetings.txt` with `Hello!` as the content and a file for each Consul service `greetings_<Consul service name>.txt` with `Hello, <Consul service name>!` as the content.

## Requirements

### Ecosystem Requirements

| Ecosystem | Version |
|-----------|---------|
| [consul](https://www.consul.io/downloads) | >= 1.7 |
| [consul-terraform-sync](https://www.consul.io/docs/nia) | >= 0.1.0 |
| [terraform](https://www.terraform.io) | >= 0.13 |

### Terraform Providers

| Name | Version |
|------|---------|
| local | >= 2.1.0 |

## Setup
There are no setup requirements for automating this module with Consul Terraform Sync.

## Usage

**User Config for Consul Terraform Sync**

example.hcl
```hcl
task {
  name           = "test"
  source         = "mkam/hello/cts"
  version        = "0.1.0"
  services       = ["web", "app"]
}
```
