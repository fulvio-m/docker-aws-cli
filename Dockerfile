FROM docker:20.10.8

RUN apk update && \
apk -Uuv add zip python3 py3-pip bash coreutils jq curl && \
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
unzip awscliv2.zip && \
./aws/install && \
pip3 install s3cmd && \
apk --purge -v del py3-pip && \
rm /var/cache/apk/*
