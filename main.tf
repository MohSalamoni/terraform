#Hello_World
provider "aws" {
  region  = "eu-west-1"
  profile = "default"
}



# Use vpc module
module "vpc" {
  source            = "./modules/vpc"
  availability_zone = "eu-west-1a"

}

# Use subnet module
module "subnets" {
  source            = "./modules/subnet"
  vpc_id_sub             = module.vpc.vpc_id  
}


module "eks" {
  source            = "./modules/eks"
  subnet_ids = module.subnets.subnet_ids  
  vpc_id_eks = module.vpc.vpc_id  
}
