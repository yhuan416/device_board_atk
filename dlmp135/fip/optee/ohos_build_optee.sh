#!/bin/sh

echo "Build OPTEE for dlmp135"

OPTEE_SRC_PATH=${1}
OPTEE_BLD_PATH=${2}
OPTEE_DEPLOYDIR=${3}

echo "OPTEE_SRC_PATH=${OPTEE_SRC_PATH}"
echo "OPTEE_BLD_PATH=${OPTEE_BLD_PATH}"
echo "OPTEE_DEPLOYDIR=${OPTEE_DEPLOYDIR}"

# rm build dir
rm -rf ${OPTEE_BLD_PATH}

# enter optee src dir
cd ${OPTEE_SRC_PATH}

# build 使用环境变量自带的python3
PATH=/usr/bin/:${PATH} BLD_PATH=${OPTEE_BLD_PATH} DEPLOYDIR=${OPTEE_DEPLOYDIR} make -f ../Makefile.sdk all
