# Remo-health-project
Remo Health Take home Assessment 

# GCP Staging Infra (WAF, LB, Autoscaling, DB, Cache)

**Pattern**: Terraform modules + per-environment roots  
**Env**: `environments/staging`  
**Modules**: `modules/*` (network, lb_waf, gke, cloud_sql, memorystore)

## High-level
- VPC (private subnets), least-privileged firewall
- External HTTPS LB + Cloud Armor WAF
- GKE for containerized web app with HPA
- Cloud SQL (managed DB)
- Memorystore (Redis) for cache
- CI: fmt + validate + tflint (later: checkov)
- CD: apply via PR → main (with approval gates for prod later)

## Usage (staging)
```bash
cd environments/staging
terraform init
terraform plan -out plan.out -var="project_id=YOUR_GCP_PROJECT" -var="region=us-central1" -var="zone=us-central1-a"

