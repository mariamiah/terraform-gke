resource "google_compute_network" "converge_test_network" {
    name                    = "converge-${var.environment}-vpc"
    auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "converge_test_subnet" {
    name                        = "converge-${var.environment}-subnet"
    ip_cidr_range               = "10.0.0.0/16"
    region                      = "${var.region}"
    network                     = "${google_compute_network.converge_test_network.self_link}"
    private_ip_google_access    = "true"
}
