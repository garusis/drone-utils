FROM docker:stable

RUN apk update && apk add curl jq bash git nodejs python py-pip py2-pip mysql-client && \
    pip install --upgrade pip && pip install --upgrade awscli j2cli s3cmd && \
    mkdir /root/.aws

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl &&  \
    chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl