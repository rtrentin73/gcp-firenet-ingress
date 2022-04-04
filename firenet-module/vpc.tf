resource "aviatrix_vpc" "vpc_spoke3" {
  cloud_type           = 4
  account_name         = var.account
  name                 = "spoke3"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
  subnets {
    name   = "spoke3-${var.region}-b"
    cidr   = var.vpcs["spoke3"]
    region = var.region
  }
}

resource "aviatrix_vpc" "vpc_spoke4" {
  cloud_type           = 4
  account_name         = var.account
  name                 = "spoke4"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
  subnets {
    name   = "spoke4-${var.region}-b"
    cidr   = var.vpcs["spoke4"]
    region = var.region
  }
}


