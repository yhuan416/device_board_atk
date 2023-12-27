#!/bin/sh

echo "Build OPTEE for dlmp135"

ROOT_BUILD_DIR=${1}
ROOT_DIR=${ROOT_BUILD_DIR}/../..

echo "ROOT_BUILD_DIR=${ROOT_BUILD_DIR}"
echo "ROOT_DIR=${ROOT_DIR}"

OPTEE_SRC_PATH=${ROOT_DIR}/device/board/atk/dlmp135/fip/optee

OPTEE_BLD_PATH=${ROOT_BUILD_DIR}/fip/optee/build
OPTEE_DEPLOYDIR=${ROOT_BUILD_DIR}/fip/deploy

# rm build dir
rm -rf ${OPTEE_BLD_PATH}

# enter optee src dir
cd ${OPTEE_SRC_PATH}/optee-os-stm32mp-3.16.0-stm32mp1-r1

echo ${PATH}

# build 使用环境变量自带的python3
PATH=/usr/bin/:${PATH} BLD_PATH=${OPTEE_BLD_PATH} DEPLOYDIR=${OPTEE_DEPLOYDIR} make -f ../Makefile.sdk all

