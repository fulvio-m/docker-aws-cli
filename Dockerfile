FROM docker:18.06

RUN apk update && \
apk -Uuv add zip python py-pip && \
pip install awscli && \
apk --purge -v del py-pip && \
rm /var/cache/apk/*
