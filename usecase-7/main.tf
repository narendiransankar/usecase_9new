module "lambda" {
  source = "./modules/lambda"
  lambda_name = var.name
  image_uri = var.image
}