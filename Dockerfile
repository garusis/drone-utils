FROM docker

RUN apk update && apk add jq python py-pip py2-pip && \
    pip install --upgrade pip && pip install --upgrade --user awscli s3cmd && \
    mkdir /root/.aws