# Node AWS CLI Docker Image

This repository contains a Dockerfile that produces a custom `node:22` image with AWS CLI version 2.17.16 installed.

## Features

- **Base Image**: `node:22`
- **AWS CLI**: Version 2.17.16
- **Platforms Supported**: `linux/amd64`

## Building the Image

To build the Docker image, use the following command:

```bash
docker run --rm -it --platform linux/amd64 mwlodarczyk/node-aws-cli
docker build -t mwlodarczyk/node-aws-cli:2.17.16 -t mwlodarczyk/node-aws-cli:latest -t mwlodarczyk/node-aws-cli:amd64 --platform linux/amd64 --push .
```