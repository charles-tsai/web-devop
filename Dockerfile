# 0. prepare env
FROM ubuntu:18.04
RUN apt update

RUN mkdir /home/develop
WORKDIR /home/develop

# 1. install node.js
ARG NODE_VER
RUN apt-get install -y xz-utils

COPY ${NODE_VER}.tar.xz /home/develop
RUN tar -xf /home/develop/${NODE_VER}.tar.xz --strip 1 -C /usr/local
RUN rm /home/develop/${NODE_VER}.tar.xz

# 2. install yarn
COPY latest.tar.gz /home/develop/yarn.tar.gz
RUN tar -xzf /home/develop/yarn.tar.gz --strip 1 -C /usr/local
RUN rm /home/develop/yarn.tar.gz
