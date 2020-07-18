#!/bin/bash

set -e

qshell account ${INPUT_AK} ${INPUT_SK} dayu

mkdir -p ~/.ssh/
echo "${INPUT_SERVER_KEY}" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
ssh-keyscan ${INPUT_SERVER_ADDR} >> ~/.ssh/known_hosts

exec "$@"