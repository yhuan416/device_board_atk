#!/bin/sh

echo "Copy boot scripts to bootfs"

BOOTFS_SRC=${1}
BOOTFS_PATH=${2}

echo "BOOTFS_SRC=${BOOTFS_SRC}"
echo "BOOTFS_PATH=${BOOTFS_PATH}"

mkdir -p ${BOOTFS_PATH}

# copy boot scripts
cp -rf ${BOOTFS_SRC}/* ${BOOTFS_PATH}
