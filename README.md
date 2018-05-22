# terraform-aws-lambda-function
Terraform module which creates a simple AWS Lambda function 

These types of resources are created:
- aws_lambda_function
- aws_lambda_permission


Usage
-------
````
module "lambda_ec2manager_change_instance_state_engineering" {
  source           = "birkoff/lambda-function/aws"
  runtime          = "${var.runtime}"
  region           = "${var.region}"
  function_name    = "my-function-name"
  timeout          = "${var.timeout}"
  s3_lambda_bucket = "${var.s3_lambda_bucket}"
  s3_function_key  = "${var.source_s3_key}"
  description      = "function description"
  handler          = "handler.lambda_handler"
  lambda_role_arn  = "${aws_iam_role.function-role.arn}"
  source_arn       = "arn:aws:execute-api:${var.region}:${var.account_id}:*"
  principal        = "apigateway.amazonaws.com"

  env_vars = {
    ENV  = "${var.env}"
  }

  tags = {
    Owner     = "terraform"
  }
}
````

License
-------
MIT
