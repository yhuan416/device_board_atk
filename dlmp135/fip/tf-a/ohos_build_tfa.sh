#!/bin/sh

echo "Build TF-A for dlmp135"

ROOT_BUILD_DIR=${1}
ROOT_DIR=${ROOT_BUILD_DIR}/../..

echo "ROOT_BUILD_DIR=${ROOT_BUILD_DIR}"
echo "ROOT_DIR=${ROOT_DIR}"

TFA_SRC_PATH=${ROOT_DIR}/device/board/atk/dlmp135/fip/tf-a

BLD_PATH=${ROOT_BUILD_DIR}/fip/build
DEPLOYDIR=${ROOT_BUILD_DIR}/fip/deploy

rm -rf ${BLD_PATH} ${DEPLOYDIR}
mkdir -p ${BLD_PATH} ${DEPLOYDIR}

cd ${TFA_SRC_PATH}/tf-a-stm32mp-v2.6-stm32mp1-r1

# build 使用环境变量自带的python3
PATH=/usr/bin/:${PATH} BLD_PATH=${ROOT_BUILD_DIR}/fip/build DEPLOYDIR=${ROOT_BUILD_DIR}/fip/deploy make -f ../Makefile.sdk all
