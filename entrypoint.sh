#!/bin/bash

set -e

qshell account ${QINIU_AK} ${QINIU_SK} dayu


exec "$@"