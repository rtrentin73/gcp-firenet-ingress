resource "random_id" "instance_id_spoke3" {
  byte_length = 8
}

resource "google_compute_instance" "instance-1-spoke3" {
  name         = "spoke3-vm-${random_id.instance_id_spoke3.hex}"
  machine_type = "f1-micro"
  zone         = "${var.region}-b"

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-stream-9"
    }
  }

  network_interface {
    network    = aviatrix_vpc.vpc_spoke3.name
    subnetwork = aviatrix_vpc.vpc_spoke3.subnets[0].name
    access_config {}
  }
  metadata = {
    ssh-keys = "centos:${file("~/.ssh/id_rsa.pub")}"
  }
    metadata_startup_script = "sudo yum update -y; sudo yum install httpd -y; sudo systemctl start httpd; sudo systemctl enable httpd"
}

resource "google_compute_firewall" "firewall-instance-spoke3" {
  name    = "instance-spoke3-rules"
  network = aviatrix_vpc.vpc_spoke3.name
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["${data.http.ip.body}/32"]
}