#!/bin/sh

echo "Copy boot scripts to bootfs"

BOOTFS_SRC=${1}
RAMDISK_PATH=${2}
BOOTFS_PATH=${3}

echo "BOOTFS_SRC=${BOOTFS_SRC}"
echo "RAMDISK_PATH=${RAMDISK_PATH}"
echo "BOOTFS_PATH=${BOOTFS_PATH}"

# copy boot scripts
# 过滤掉 .git、BUILD.gn、ohos_copy_scripts.sh
echo rsync -a --exclude=".git" --exclude="BUILD.gn" --exclude="ohos_copy_scripts.sh" ${BOOTFS_SRC}/ ${BOOTFS_PATH}/
rsync -a --exclude=".git" --exclude="BUILD.gn" --exclude="ohos_copy_scripts.sh" ${BOOTFS_SRC}/ ${BOOTFS_PATH}/

# copy ramdisk
rsync -a --delete ${RAMDISK_PATH} ${BOOTFS_PATH}/
