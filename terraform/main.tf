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

  iam_role_name        = var.iam_role_name
  instance_profile_name = var.instance_profile_name
}

module "compute" {
  source = "./modules/Compute"

  project_name      = var.project_name
  environment       = var.environment

  subnet_id         = module.networking.public_subnet_id
  security_group_id = module.security.sg_id

  instance_profile_name = module.security.instance_profile_name

  instance_type     = var.instance_type
}