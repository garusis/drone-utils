FROM node:8

RUN wget 'https://bootstrap.pypa.io/get-pip.py' && \
    python get-pip.py && \
    pip install awscli --upgrade --user