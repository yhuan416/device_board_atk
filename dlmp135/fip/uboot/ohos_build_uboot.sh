#!/bin/sh

echo "Build U-BOOT for dlmp135"

UBOOT_SRC_PATH=${1}
UBOOT_BLD_PATH=${2}
UBOOT_DEPLOYDIR=${3}

# rm build dir
rm -rf ${UBOOT_BLD_PATH}

# enter uboot src dir
cd ${UBOOT_SRC_PATH}

# build 使用环境变量自带的python3
PATH=/usr/bin/:${PATH} BLD_PATH=${UBOOT_BLD_PATH} DEPLOYDIR=${UBOOT_DEPLOYDIR} \
make CROSS_COMPILE=arm-none-linux-gnueabihf- -f ../Makefile.sdk all
