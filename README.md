###Prerequisites
The following will not be created by terraform and must be pre-existing (in `us-east-2` where applicable):
* AWS credentials exported as environment variables
    ```
    export AWS_ACCESS_KEY_ID={aws_access_key_id}
    export AWS_SECRET_ACCESS_KEY={aws_secret_access_key}
    ```
* Route 53 hosted zone `stephengb.com`
* SSH key `stephengb.pem`
* S3 bucket `stephen-minecraft`

###Usage
To SSH into this instance:
* `ssh -i ~/.ssh/stephengb.pem ec2-user@`{instance-ip-or-dns}