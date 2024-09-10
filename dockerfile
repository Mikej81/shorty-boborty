FROM ubuntu:focal

ENV FRRVER="frr-stable"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get clean && \
    apt-get -y update && \
    apt-get upgrade -y \
    && apt-get install -y \
    software-properties-common \
    openvpn \
    git \
    autoconf \
    automake \
    libtool \
    make \
    libreadline-dev \
    texinfo \
    pkg-config \
    libpam0g-dev \
    libjson-c-dev \
    bison \
    flex \
    libc-ares-dev \
    python3-dev \
    python3-sphinx \
    install-info \
    build-essential \
    libsnmp-dev perl \
    libgrpc++-dev \
    protobuf-compiler-grpc \
    protobuf-c-compiler \
    libprotobuf-c-dev \
    libcap-dev \
    libelf-dev \
    libunwind-dev \
    frr \
    frr-pythontools


CMD [ "bash" ]