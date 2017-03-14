FROM alpine:3.4

MAINTAINER Eli Mydlarz <eli.mydlarz@gmail.com>

RUN apk --update add \
    python \
    py-pip \
    jq \
    && pip install awscli==1.11.56 \
    && apk del py-pip \
    && rm -rf /var/cache/apk/*
