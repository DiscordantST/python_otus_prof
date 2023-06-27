FROM debian:stable-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc protobuf-c-compiler libprotobuf-c-dev zlib1g-dev \
    python3 python3-pip python3-dev python3-setuptools


COPY . /opt/protobuf_serializer

WORKDIR /opt/protobuf_serializer
