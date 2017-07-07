#!/usr/bin/env bash

echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories; \
echo "http://dl-3.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories; \
echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories; \
echo "http://dl-5.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

echo "http://dl-2.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories; \
echo "http://dl-3.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories; \
echo "http://dl-4.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories; \
echo "http://dl-5.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories


echo "http://dl-2.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories; 

echo "vagrant ALL=NOPASSWD:ALL" >> /etc/sudoers




apk add build-base gcc abuild binutils binutils-doc gcc-doc
apk add cmake cmake-doc extra-cmake-modules extra-cmake-modules-doc

apk add --update vim

apk add --update make gcc

apk add --update leveldb
apk add --update leveldb-dev
apk add --update git


apk add --update opam 
apk add --update ocaml=4.04.0
apk add --no-cache ca-certificates



#wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-leveldb/master/sgerrand.rsa.pub
#wget https://github.com/sgerrand/alpine-pkg-leveldb/releases/download/1.18-r0/leveldb-1.18-r0.apk
#apk --allow-untrusted add leveldb-1.18-r0.apk



# LIBSODIUM
wget https://download.libsodium.org/libsodium/releases/libsodium-1.0.11.tar.gz
tar -xvzf libsodium-1.0.11.tar.gz
cd libsodium-1.0.11
./configure
make && make check
sudo make install
###########

apk add libsodium-dev

#apk add gmp-dev libev-dev libressl-dev linux-headers m4 pcre-dev perl zlib-dev
