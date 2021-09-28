FROM docker:20.10.8

RUN apk update && \
apk -Uuv add zip python3 py3-pip bash coreutils jq && \
pip3 install awscli s3cmd && \
apk --purge -v del py3-pip && \
rm /var/cache/apk/*
