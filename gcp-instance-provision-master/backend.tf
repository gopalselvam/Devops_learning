terraform {
    #required_version = "~> 0.11.11"
    required_version = ">= 0.12.14"
    backend "gcs" {
         credentials = "./creds/serviceaccount.json"
         bucket      = "shan-storage"
         prefix         = "terraform_remote_state/development_remote state"
    }
}