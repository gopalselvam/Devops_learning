provider "google" {
  # version = "1.20.0"
  #required_version = ">= 0.12.14"
   credentials = "${file("./creds/serviceaccount.json")}"
   project     = "gcp-shanmukha"
   region      = "us-central1-a"
 }
 