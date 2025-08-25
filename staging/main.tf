module "network" {
  source      = "../../modules/network"
  project_id  = var.project_id
  region      = var.region
  private_cidr = "10.0.1.0/24"
}

module "gke" {
  source      = "../../modules/gke"
  project_id  = var.project_id
  region      = var.region
  network_id  = module.network.network_id
  subnet_id   = module.network.subnet_id
}