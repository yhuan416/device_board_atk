#!/bin/sh

echo "Build TF-A for dlmp135"

ROOT_BUILD_DIR=${1}
ROOT_DIR=${ROOT_BUILD_DIR}/../..

echo "ROOT_BUILD_DIR=${ROOT_BUILD_DIR}"
echo "ROOT_DIR=${ROOT_DIR}"

TFA_SRC_PATH=${ROOT_DIR}/device/board/atk/dlmp135/fip/tf-a

TFA_BLD_PATH=${ROOT_BUILD_DIR}/fip/tf-a/build
TFA_DEPLOYDIR=${ROOT_BUILD_DIR}/fip/deploy

# rm build dir
rm -rf ${TFA_BLD_PATH}

# enter tf-a src dir
cd ${TFA_SRC_PATH}/tf-a-stm32mp-v2.6-stm32mp1-r1

echo ${PATH}

# build 使用环境变量自带的python3
PATH=/usr/bin/:${PATH} BLD_PATH=${TFA_BLD_PATH} DEPLOYDIR=${TFA_DEPLOYDIR} make -f ../Makefile.sdk all

