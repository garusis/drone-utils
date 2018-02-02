FROM docker:stable

ENV DOCKER_HOST "tcp://0.0.0.0:2375"

RUN apk update && apk add jq bash python py-pip py2-pip && \
    pip install --upgrade pip && pip install --upgrade awscli s3cmd && \
    mkdir /root/.aws