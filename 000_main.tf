terraform {
  cloud {
    hostname     = "terraform.mgmt.dovetail-lab.ca"
    organization = "DOVETAIL"


    workspaces {
      name = "DOVETAIL"
    }
  }
  required_providers {
    aci = {
      source = "ciscodevnet/aci"
    }
    
    mso = {
      source = "CiscoDevNet/mso"
    }
    

  }
}



    
