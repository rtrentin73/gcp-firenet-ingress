resource "aviatrix_spoke_transit_attachment" "spoke3_sttachment" {
  spoke_gw_name   = aviatrix_spoke_gateway.spoke_gateway_spoke3.id
  transit_gw_name = module.gcp-transit-firenet.transit_gateway.id
}

resource "aviatrix_spoke_transit_attachment" "spoke4_sttachment" {
  spoke_gw_name   = aviatrix_spoke_gateway.spoke_gateway_spoke4.id
  transit_gw_name = module.gcp-transit-firenet.transit_gateway.id
}