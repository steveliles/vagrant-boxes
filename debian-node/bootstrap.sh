#!/usr/bin/env bash

NODE_VERSION=v0.10.26 

apt-get update
apt-get -y upgrade

# get ourselves some basic toys
apt-get -y install git-core build-essential openssl libssl-dev subversion python

# install nginx for proxying node
apt-get -y install nginx

# install our preferred version of node - change the git checkout line
# to modify the version of node that gets installed - here using the latest
# stable at time of writing
git clone https://github.com/joyent/node.git node
cd node
git checkout $NODE_VERSION
./configure --openssl-libpath=/usr/lib/ssl
make -j 3
make install
node -v
npm -v


