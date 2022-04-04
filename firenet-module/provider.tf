terraform {
  required_providers {
    aviatrix = {
      source  = "AviatrixSystems/aviatrix"
      version = "2.21.1-6.6.ga"
    }
    google = {
      source  = "hashicorp/google"
      version = "4.14.0"
    }
    http = {
      source = "hashicorp/http"
      version = "2.1.0"
    }
  }
}

provider "aviatrix" {
  controller_ip           = var.controller_ip
  username                = var.username
  password                = var.password
  skip_version_validation = true
  verify_ssl_certificate  = false
}

provider "google" {
  project = var.project
  region  = var.region
}

provider "http" {
  # Configuration options
}

data "http" "ip" {
  url = "https://ifconfig.me/"
}
