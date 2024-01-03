resource "oci_core_security_list" "estudo_security_list" {
    compartment_id = var.compartment_id
    vcn_id         = oci_core_vcn.rede-estudo.id
    display_name   = "estudoSecurityList"

    egress_security_rules {
        protocol    = "all"
        destination = "0.0.0.0/0"
        }

    ingress_security_rules {
        protocol = "all"        
        source   = "0.0.0.0/0"
    }
}