# AWS cli

This image provides AWS cli on top of Alpine Linux.

## Usage

There is 2 options:
* Provide your AWS configuration environment
* Provide the AWS keys via environment variables

### Configuration environment

```shell
docker run -it --rm -v $HOME/.aws:~/.aws groguelon/awscli:latest ec2 describe-instances
```

### Environment variables

```shell
docker run -it --rm \
    -e AWS_DEFAULT_REGION=us-east-1 \
    -e AWS_ACCESS_KEY_ID=$(aws configure get default.aws_access_key_id) \
    -e AWS_SECRET_ACCESS_KEY=$(aws configure get default.aws_secret_access_key) \
    groguelon/awscli:latest ec2 describe-instances
```
