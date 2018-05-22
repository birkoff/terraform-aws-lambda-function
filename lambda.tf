resource "aws_lambda_function" "lambda-function" {
  s3_bucket     = "${var.s3_lambda_bucket}"
  s3_key        = "${var.s3_function_key}"
  function_name = "${var.function_name}"
  description   = "${var.description}"
  role          = "${var.lambda_role_arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"
  timeout       = "${var.timeout}"

  environment {
    variables = "${var.env_vars}"
  }

  tags = "${var.tags}"
}

resource "aws_lambda_permission" "lambda-function-permission" {
  statement_id  = "${format("AllowExecution-%s-%s", aws_lambda_function.lambda-function.function_name, var.region)}"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda-function.function_name}"
  principal     = "${var.principal}"
  source_arn    = "${var.source_arn}"
}
