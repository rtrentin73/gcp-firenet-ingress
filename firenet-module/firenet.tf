module "gcp-transit-firenet" {
  source  = "terraform-aviatrix-modules/gcp-transit-firenet/aviatrix"
  version = "1.1.1"
  account                 = var.account
  transit_cidr            = var.vpcs["firenet"]
  firewall_cidr           = var.vpcs["lan"]
  region                  = var.region
  firewall_image          = var.firewall_image
  bootstrap_bucket_name = var.storage_bucket_name
}

