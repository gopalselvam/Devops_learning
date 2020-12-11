// A single Google Cloud Engine instancels
resource "google_compute_instance" "default" {
 name         = "gcp-linux-vm"
 machine_type = "f1-micro"
 zone         = "us-central1-a"
 
 boot_disk {
   initialize_params {
     image = "debian-cloud/debian-9"
   }
 }

// Make sure flask is installed on all new instances for later steps
 metadata_startup_script = "sudo apt -y update; sudo apt -y install ansible; sudo chmod 777 /etc/ansible/hosts; sudo easy_install pip; sudo pip install pywinrm"

 network_interface {
   network = "shan-vpc"

   access_config {
     // Include this section to give the VM an external ip address/
   }
 }
}


