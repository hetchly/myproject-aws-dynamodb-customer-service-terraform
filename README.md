# myproject-aws-dynamodb-customer-service-terraform

## Prerequisites
Provision an S3 bucket to store Terraform State and DynamoDB for state-lock
using https://github.com/jrdalino/aws-tfstate-backend-terraform

## Usage
- Replace variables in terraform.tfvars
- Replace variables in state_config.tf
- Initialize, Review Plan and Apply
```
$ terraform init
$ terraform plan
$ terraform apply
```

## DynamoDB Table Usage
- Modify seed data in populate-dynamodb.json
- Describe the table
```
$ aws dynamodb describe-table \
--table-name customers
```

- Write items to the table
```
$ aws dynamodb batch-write-item \
--request-items file://~/environment/myproject-aws-dynamodb-customer-service-terraform/customers.json
```

- Scan the table
```
$ aws dynamodb scan \
--table-name customers
```

## Inputs
| Name | Description |
|------|-------------|
| | |

## Outputs
| Name | Description |
|------|-------------|
| | |

## (In Progress) Module Usage

## References