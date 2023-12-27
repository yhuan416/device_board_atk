#!/bin/sh

echo "Build U-BOOT for dlmp135"

ROOT_BUILD_DIR=${1}
ROOT_DIR=${ROOT_BUILD_DIR}/../..

echo "ROOT_BUILD_DIR=${ROOT_BUILD_DIR}"
echo "ROOT_DIR=${ROOT_DIR}"

UBOOT_SRC_PATH=${ROOT_DIR}/device/board/atk/dlmp135/fip/uboot

UBOOT_BLD_PATH=${ROOT_BUILD_DIR}/fip/uboot/build
UBOOT_DEPLOYDIR=${ROOT_BUILD_DIR}/fip/deploy

# rm build dir
rm -rf ${UBOOT_BLD_PATH}

# enter uboot src dir
cd ${UBOOT_SRC_PATH}/u-boot-stm32mp-v2021.10-stm32mp1-r1

echo ${PATH}

# build 使用环境变量自带的python3
PATH=/usr/bin/:${PATH} \
BLD_PATH=${UBOOT_BLD_PATH} \
DEPLOYDIR=${UBOOT_DEPLOYDIR} \
make CROSS_COMPILE=arm-none-linux-gnueabihf- -f ../Makefile.sdk all

