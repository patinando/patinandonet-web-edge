module "cloud_run" {
  source = "git::https://github.com/CallePuzzle/terraform-google-cloud-run.git?ref=1.1.0"

  region = "europe-west1"
  image = "gcr.io/patinando-net-int/patinandonet-web-edge:develop"
  run_service_name = "patinandonet-web-edge"
  project = "patinando-net-int"

}
