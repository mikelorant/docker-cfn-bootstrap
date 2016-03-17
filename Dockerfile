FROM alpine

RUN apk add --no-cache \
      python \
      py-pip && \
    pip install \
      --no-cache-dir \
      --disable-pip-version-check \
      https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz

ENTRYPOINT ["/bin/sh","-c"]
