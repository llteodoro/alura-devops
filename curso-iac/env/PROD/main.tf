module "aws-prod" {
  source = "../../infra"
  instancia = "t2.micro"
  regiao_aws = "us-east-1"
  chave = "IAC-PROD"
  ami = "ami-0c4f7023847b90238"
  sec-group = "acesso-geral-prod"
}

  output "IP" {
        value = module.aws-prod.IP_publico      
}