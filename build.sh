#! /bin/bash

# node.js
NODE_VER=v8.12.0
NODE_FULL_NAME=node-$NODE_VER-linux-x64
wget -nc https://nodejs.org/dist/$NODE_VER/$NODE_FULL_NAME.tar.xz

# yarn
wget -nc https://yarnpkg.com/latest.tar.gz

docker build --build-arg NODE_VER=$NODE_FULL_NAME -t web-devop:latest -f Dockerfile .

