### Prerequisites
The following will not be created by terraform and must be pre-existing (in `us-east-2` where applicable):
* AWS credentials exported as environment variables
    ```
    export AWS_ACCESS_KEY_ID={aws_access_key_id}
    export AWS_SECRET_ACCESS_KEY={aws_secret_access_key}
    ```
* Route 53 hosted zone `stephengb.com`
* SSH key `stephengb.pem`
* S3 bucket `stephen-minecraft`

### Usage
The terraform files are set up in a way to allow multiple servers to be managed with terraform simultaneously.

To create everything:
* `terraform apply`

To create the global infrastructure only:
* `terraform apply -target module.global_infrastructure`

To create a single server only:
* `terraform apply -target module.minecraft_server_[server_name]`
