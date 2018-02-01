FROM docker

RUN apk update && apk add jq bash python py-pip py2-pip && \
    pip install --upgrade pip && pip install --upgrade awscli s3cmd && \
    mkdir /root/.aws