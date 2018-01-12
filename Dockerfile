# Inspired by Codeship: codeship/aws-base
FROM python:3.6-alpine3.7

LABEL maintainer='Geoffrey Roguelon'

# which version of the AWS CLI to install.
# https://pypi.python.org/pypi/awscli
ARG AWS_CLI_VERSION="1.14.23"

ENV PIP_DISABLE_PIP_VERSION_CHECK=true

RUN pip install awscli==${AWS_CLI_VERSION} && \
  mkdir -p "${HOME}/.aws"
