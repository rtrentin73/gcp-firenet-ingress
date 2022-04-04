resource "aviatrix_spoke_gateway" "spoke_gateway_spoke3" {
  single_az_ha                      = true
  gw_name                           = "gcp-spoke3-${var.region}"
  vpc_id                            = aviatrix_vpc.vpc_spoke3.id
  cloud_type                        = 4
  vpc_reg                           = "${var.region}-b"
  gw_size                           = "n1-standard-1"
  account_name                      = var.account
  subnet                            = var.vpcs["spoke3"]
  manage_transit_gateway_attachment = true
  depends_on                        = [aviatrix_vpc.vpc_spoke3]
}

resource "aviatrix_spoke_gateway" "spoke_gateway_spoke4" {
  single_az_ha                      = true
  gw_name                           = "gcp-spoke4-${var.region}"
  vpc_id                            = aviatrix_vpc.vpc_spoke4.id
  cloud_type                        = 4
  vpc_reg                           = "${var.region}-b"
  gw_size                           = "n1-standard-1"
  account_name                      = var.account
  subnet                            = var.vpcs["spoke4"]
  manage_transit_gateway_attachment = true
  depends_on                        = [aviatrix_vpc.vpc_spoke4]
}