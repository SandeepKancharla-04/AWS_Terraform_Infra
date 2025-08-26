# Terraform AWS Infrastructure (Showcase)

[![Terraform Plan](https://github.com/OWNER/REPO/actions/workflows/terraform-plan.yml/badge.svg)](https://github.com/OWNER/REPO/actions/workflows/terraform-plan.yml)

Provision a production-shaped VPC with public/private subnets, NAT, and a private EC2 app node. CI runs fmt/validate/tflint/plan on PRs; manual apply on main.

## Quick start (local)
```bash
cp terraform.tfvars.example terraform.tfvars
terraform init
terraform plan
```

## Architecture

```mermaid
flowchart LR
  subgraph VPC["VPC (10.0.0.0/16)"]
    IGW["Internet Gateway"]

    subgraph Public["Public Subnet (10.0.1.0/24)"]
      NAT["NAT Gateway"]
    end

    subgraph Private["Private Subnet (10.0.2.0/24)"]
      EC2["EC2 App (t3.micro)"]
    end
  end

  IGW <---> Public
  Public --> NAT
  NAT --> Private
  EC2 -->|egress via NAT| NAT
```
