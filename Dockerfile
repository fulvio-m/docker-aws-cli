FROM docker:20.10.8

RUN apk update && \
apk -Uuv add zip python py-pip bash coreutils jq && \
pip install awscli s3cmd && \
apk --purge -v del py-pip && \
rm /var/cache/apk/*
