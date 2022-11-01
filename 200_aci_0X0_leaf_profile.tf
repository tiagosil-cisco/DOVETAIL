//Fabric > Switches > Leaf Switches > Profiles
data "aci_leaf_profile" "dev_leaf_prof" {
  name  = "Switch103-104_Profile"
}
output "dev_leaf_prof" {
    value = data.aci_leaf_profile.dev_leaf_prof.id
}

//Fabric > Interface > Leaf Interfaces > Profiles
data "aci_leaf_interface_profile" "dev_leaf_int_prof" {
  name  = "Switch103-104_Profile_ifselector"
}
output "dev_leaf_int_prof" {
    value = data.aci_leaf_interface_profile.dev_leaf_int_prof.id
}

//Fabric > Interface > Leaf Interfaces > Profiles > Access port selector
data "aci_access_port_selector" "dev_acc_port_select" {
  leaf_interface_profile_dn  = data.aci_leaf_interface_profile.dev_leaf_int_prof.id
  name                       = "OTT-CORE-VPC03"
  access_port_selector_type  = "range"
}
output "dev_acc_port_select" {
    value = data.aci_access_port_selector.dev_acc_port_select.id
}