terraform {
required_providers {
proxmox = {
source = "bpg/proxmox"
}
}
}



provider "proxmox" {
  endpoint = "https://192.168.1.25:8006/"
  api_token = var.api_token
  insecure = true
  ssh {
    agent    = true
    username = "terraform-prov"
  }
}
  