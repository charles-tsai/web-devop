FROM ubuntu:18.04
RUN apt update
ARG NODE_VER
RUN apt-get install -y xz-utils

RUN mkdir /home/develop
WORKDIR /home/develop
COPY ${NODE_VER}.tar.xz /home/develop
RUN tar -xf /home/develop/${NODE_VER}.tar.xz
RUN mv ${NODE_VER} node
RUN rm /home/develop/${NODE_VER}.tar.xz
# update bashrc
RUN echo 'export PATH=/home/develop/node/bin:$PATH' > /root/.bashrc
