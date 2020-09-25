terraform {
  backend "remote" {
    organization = "patinando-net"

    workspaces {
      name = "015-patinandonet-web-edge-test"
    }
  }
}

/*
** Provider
*/
provider "google-beta" {
  project = var.project
  region  = var.region
}

variable "project" {
  type = string
}

variable "region" {
  type = string
}

variable "run_service_name" {
  type = string
}

variable "image" {
  type = string
}

data "google_compute_default_service_account" "default" {
  project = var.project
}

module "cloud_run" {
  source = "git::https://github.com/CallePuzzle/terraform-google-cloud-run.git?ref=1.1.0"

  project = var.project
  region = var.region
  image = var.image
  run_service_name = var.run_service_name
}
