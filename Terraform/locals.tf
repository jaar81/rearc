locals {
  vpc_cidr = "10.0.0.0/16"
}

locals {
  security_groups = {
    public = {
      name        = "public_sg"
      description = "Security group for access only from LB and ssh
      ingress = {
        ssh = {
          from        = 22
          to          = 22
          protocol    = "tcp"    
        }
        sg_whitelist = {
          from        = 0
          to          = 65535
          protocol    = "tcp"    
        }
      }
    }
  }
}

