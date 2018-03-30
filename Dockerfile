FROM docker:stable
RUN apk update \
    && apk add curl jq bash git python py-pip py2-pip tar \
    && pip install --upgrade pip \
    && pip install --upgrade awscli j2cli s3cmd  \
    && mkdir /root/.aws \
    && mkdir /root/.grc
WORKDIR /home
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl  \
    && chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
RUN curl https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-183.0.0-linux-x86_64.tar.gz -o "gcloud.tar.gz" \
    && tar -xvzf gcloud.tar.gz  \
    && chmod +x ./google-cloud-sdk/install.sh  \
    && export CLOUDSDK_CORE_DISABLE_PROMPTS=1 \
    && sh  ./google-cloud-sdk/install.sh --usage-reporting=false --command-completion=true  --path-update=true --rc-path=/root/.profile --additional-components=kubectl