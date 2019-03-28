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

I'll add more details later on how to apply/destroy only a single server. These links will be helpful:
* https://github.com/hashicorp/terraform/issues/12917 
* https://blog.gruntwork.io/how-to-manage-terraform-state-28f5697e68fa
* https://blog.gruntwork.io/how-to-create-reusable-infrastructure-with-terraform-modules-25526d65f73d