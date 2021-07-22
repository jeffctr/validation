#!/bin/bash
apt-get update && apt-get install -y wget make
wget https://github.com/gohugoio/hugo/releases/download/v0.86.0/hugo_0.86.0_Linux-64bit.deb
dpkg -i hugo_0.86.0_Linux-64bit.deb
apt-get install -fy
make build
rm -rf hugo_0.86.0_Linux-64bit.deb
