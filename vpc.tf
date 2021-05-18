module "network" {
  source       = "app.terraform.io/bromage-training/network/google"
  version      = "2.5.0"
  network_name = "plop"
  project_id   = var.project

  subnets = [
    {
      subnet_name   = "plop-subnet"
      subnet_ip     = "10.100.10.0/24"
      subnet_region = var.region
    }
  ]

}