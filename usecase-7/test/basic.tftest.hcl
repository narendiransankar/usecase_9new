run "check_bucket_output" {
    command = apply

    assert {
        condition = terraform.output.bucket_name == var.bucket_name
        error_message = "Output bucket name does not match input"
    }
}