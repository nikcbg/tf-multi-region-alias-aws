# tf-multi-region-aws

### Repository for creating two EC2 instances in two different regions with alias meta-argument in AWS.

To include multiple configurations for a given provider, include multiple provider blocks with the same provider name, but set the alias meta-argument to an alias name to use for each additional configuration. 

### How to use the repository

- clone repository to your computer 
- authenticate with AWS
- execute `terraform init/plan/apply` 
- check AWS if the resources were created in two different regions 
- execute `terraform destroy` to terminate the resources you just created 
