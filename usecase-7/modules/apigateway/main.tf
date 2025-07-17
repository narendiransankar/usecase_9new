resource "aws_api_gateway_rest_api" "this" {
  name        = var.api_name
  description = "API Gateway with Lambda Proxy Integration"
}
 
resource "aws_api_gateway_method" "get" {
rest_api_id = aws_api_gateway_rest_api.this.id
resource_id = aws_api_gateway_rest_api.this.id
  http_method   = "GET"
  authorization = "NONE"
}
 
resource "aws_api_gateway_integration" "lambda" {
rest_api_id = aws_api_gateway_rest_api.this.id
resource_id = aws_api_gateway_resource.proxy.id
  http_method = aws_api_gateway_method.get.http_method
 
  integration_http_method = "GET"
  type                    = "AWS_PROXY"
  uri                     = var.lambda_invoke_arn
}

 
resource "aws_api_gateway_deployment" "this" {
  depends_on = [aws_api_gateway_integration.lambda]
rest_api_id = aws_api_gateway_rest_api.this.id
  stage_name  = var.stage_name
}