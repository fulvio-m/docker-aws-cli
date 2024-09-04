FROM docker:26.1.2-alpine3.19

ENV GLIBC_VER=2.31-r0

# install glibc compatibility for alpine
RUN apk --no-cache add \
          jq \
          py3-pip \
          s3cmd \
          aws-cli \
    && rm -rf /var/cache/apk/*

# Install aws-sam
RUN wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip && \
          unzip aws-sam-cli-linux-x86_64.zip && \
          ./install
