FROM docker:26.1.2-alpine3.19

ENV GLIBC_VER=2.31-r0

# install glibc compatibility for alpine
RUN apk --no-cache add \
          jq \
          zip \
          py3-pip \
          s3cmd \
          aws-cli \
    && rm -rf /var/cache/apk/*

# Install aws-sam
RUN pip install --break-system-packages aws-sam-cli
