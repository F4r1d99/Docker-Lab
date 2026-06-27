module "networking" {
  source = "./modules/Networking"

  project_name = var.project_name
  environment  = var.environment
  vpc_cidr     = var.vpc_cidr
}

module "security" {
  source = "./modules/Security"

  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.networking.vpc_id
}

module "compute" {
  source = "./modules/Compute"

  project_name      = var.project_name
  environment       = var.environment

  subnet_id         = module.networking.public_subnet_id
  security_group_id = module.security.sg_id

  instance_type     = var.instance_type
}