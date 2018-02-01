FROM node:8

RUN apt-get update && apt-get install jq python py-pip py2-pip && \
    pip install --upgrade pip awscli s3cmd && \
    mkdir /root/.aws