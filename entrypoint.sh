#!/bin/bash

set -e

qshell account ${QINIU_AK} ${QINIU_SK} dayu

mkdir -p ~/.ssh/
echo "$SERVER_KEY" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
ssh-keyscan $SERVER_ADDR >> ~/.ssh/known_hosts

exec "$@"