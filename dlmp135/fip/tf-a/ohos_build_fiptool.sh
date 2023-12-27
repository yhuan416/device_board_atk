#!/bin/sh

echo "Build fiptool for dlmp135"

ROOT_BUILD_DIR=${1}
FIPTOOL_TARGET_DIR=${2}

ROOT_DIR=${ROOT_BUILD_DIR}/../..

echo "ROOT_BUILD_DIR=${ROOT_BUILD_DIR}"
echo "ROOT_DIR=${ROOT_DIR}"
echo "FIPTOOL_TARGET_DIR=${FIPTOOL_TARGET_DIR}"

FIPTOOL_SRC_PATH=${ROOT_DIR}/device/board/atk/dlmp135/fip/tf-a/tf-a-stm32mp-v2.6-stm32mp1-r1/tools/fiptool

# make target dir
mkdir -p ${FIPTOOL_TARGET_DIR}

# enter fiptool src dir
cd ${FIPTOOL_SRC_PATH}

# build
make

# copy fiptool to target dir
cp fiptool ${FIPTOOL_TARGET_DIR}

