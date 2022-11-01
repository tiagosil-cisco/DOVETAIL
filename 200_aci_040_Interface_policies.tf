//ACI: Fabric > Policies > Interface > LLDP Interface
resource "aci_lldp_interface_policy" "lldp_policy" {
  name        = "DOVETAIL_LLDP_ENABLED"
  admin_rx_st = "enabled"
  admin_tx_st = "enabled"
} 

//ACI: Fabric > Policies > Interface > CDP Interface
resource "aci_cdp_interface_policy" "cdp_policy" {
  name        = "DOVETAIL_CDP_ENABLED"
  admin_st    = "enabled"
}

resource "aci_lacp_policy" "lacp_policy" {
  name        = "DOVETAIL_LACP_ACTIVE"
  ctrl        = ["fast-sel-hot-stdby", "graceful-conv", "susp-individual"]
  max_links   = "16"
  min_links   = "1"
  mode        = "active"
}