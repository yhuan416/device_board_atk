#!/bin/sh

echo "Build TF-A for dlmp135"

TFA_SRC_PATH=${1}
TFA_BLD_PATH=${2}
TFA_DEPLOYDIR=${3}

echo "TFA_SRC_PATH=${TFA_SRC_PATH}"
echo "TFA_BLD_PATH=${TFA_BLD_PATH}"
echo "TFA_DEPLOYDIR=${TFA_DEPLOYDIR}"

# rm build dir
rm -rf ${TFA_BLD_PATH}

# enter tf-a src dir
cd ${TFA_SRC_PATH}

# build 使用环境变量自带的python3
PATH=/usr/bin/:${PATH} BLD_PATH=${TFA_BLD_PATH} DEPLOYDIR=${TFA_DEPLOYDIR} make -f ../Makefile.sdk all
