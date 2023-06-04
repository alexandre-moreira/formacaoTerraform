# HashiCorp Terraform

Terrafomr é uma ferramenta open source de provisionamento de infraestrutura, criada pela HashiCorp em 2014 e escrita em Go Language, que permite definirmos nossa infraestrutura como código(IaC), usando uma liguagem simples e declarativa.

# Vantagens
* Pode ser utilizado por diversos Cloud providers, como Azure, AWS e Google Cloud...;
* Versionamento e documentação de Infraestrutura.
* Garantia do mesmo resultado todas as vezes que rodar o script - o resultado sempre será o mesmo.
* Aceita liguagem JSON também.
* Pode ser utilizado tanto em infraestrutura cloud com on primises.

# Principais comandos
* terraform init    -> Inicializa o ambiente com o provider utilizado
* terraform plan    -> Inspeciona e pré-visualizar as possíveis mudanças que seriam aplicadas em uma infraestrutura. 
* terraform apply   -> Cria e altera as instâncias/objetos no Provider. 
* terraform destroy -> Destroi todos os recursos que foram criados durante o processo de criação.
* terraform outout  -> Mostra um valor de uma variável.

