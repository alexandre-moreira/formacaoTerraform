# Criar os 3 ambientes com tfstate

## Cria ambiente de dev
- terraform plan -var-file="dev/main.tfvars" -state="dev/main.tfstate" -out="dev/main.tfplan"
- terraform apply -var-file="dev/main.tfvars" -state="dev/main.tfstate" -auto-approve
- terraform destroy -var-file="dev/main.tfvars" -state="dev/main.tfstate" -auto-approve

## Cria ambiente de test
- terraform plan -var-file="test/main.tfvars" -state="test/main.tfstate" -out="test/main.tfplan"
- terraform apply -var-file="test/main.tfvars" -state="test/main.tfstate" -auto-approve
- terraform destroy -var-file="test/main.tfvars" -state="test/main.tfstate" -auto-approve

## Cria ambiente de prod
- terraform plan -var-file="prod/main.tfvars" -state="prod/main.tfstate" -out="prod/main.tfplan"
- terraform apply -var-file="prod/main.tfvars" -state="prod/main.tfstate" -auto-approve
- terraform destroy -var-file="prod/main.tfvars" -state="prod/main.tfstate" -auto-approve