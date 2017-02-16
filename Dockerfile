FROM ubuntu:16.04

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    git \
    iproute2 \
    locales \
    lsb-release \
    make \
    openssh-client \
    openssh-server \
    python-coverage \
    python-dbus \
    python-httplib2 \
    python-jinja2 \
    python-keyczar \
    python-mock \
    python-mysqldb \
    python-nose \
    python-paramiko \
    python-pip \
    python-setuptools \
    python-virtualenv \
    python-wheel \
    python-yaml \
    sudo \
    unzip \
    virtualenv \
    zip \
    && \
    apt-get clean

RUN rm /etc/apt/apt.conf.d/docker-clean
RUN mkdir /etc/ansible/
RUN locale-gen en_US.UTF-8
RUN ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa && \
    cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys && \
    for key in /etc/ssh/ssh_host_*_key.pub; do echo "localhost $(cat ${key})" >> /root/.ssh/known_hosts; done
ENV container=docker

