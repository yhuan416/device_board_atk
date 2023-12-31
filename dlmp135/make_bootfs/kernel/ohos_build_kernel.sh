#!/bin/sh

echo "Prepare kernel for dlmp135"

KERNEL_SRC_PATH=${1}
KERENL_TMP_PATH=${2}
BOOTFS_PATH=${3}

KERNEL_DIR_NAME="${KERENL_TMP_PATH}/linux-5.15.24"

echo "KERNEL_SRC_PATH=${KERNEL_SRC_PATH}"
echo "KERENL_TMP_PATH=${KERENL_TMP_PATH}"
echo "BOOTFS_PATH=${BOOTFS_PATH}"

mkdir -p ${KERENL_TMP_PATH}

# copy kernel source
rm -rf ${KERNEL_DIR_NAME}
cp -rf ${KERNEL_SRC_PATH} ${KERNEL_DIR_NAME}

# build kernel
cd ${KERNEL_DIR_NAME}
./make-ohos.sh ${BOOTFS_PATH}
