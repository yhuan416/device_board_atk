#!/bin/sh

echo "Build fiptool for dlmp135"

FIPTOOL_SRC_PATH=${1}
FIPTOOL_TARGET_DIR=${2}

echo "FIPTOOL_SRC_PATH=${FIPTOOL_SRC_PATH}"
echo "FIPTOOL_TARGET_DIR=${FIPTOOL_TARGET_DIR}"

# enter fiptool src dir
cd ${FIPTOOL_SRC_PATH}

# build
make

# make target dir
mkdir -p ${FIPTOOL_TARGET_DIR}

# copy fiptool to target dir
cp fiptool ${FIPTOOL_TARGET_DIR}

