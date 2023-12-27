#!/bin/sh

echo "Build fip for dlmp135"

FIP_SRC_IMAGE_DIR=${1}
FIP_TARGET_DIR=${2}

echo "FIP_SRC_IMAGE_DIR=${FIP_SRC_IMAGE_DIR}"
echo "FIP_TARGET_DIR=${FIP_TARGET_DIR}"

# enter src dir
cd ${FIP_SRC_IMAGE_DIR}

# create fip
../fiptool/fiptool create \
--nt-fw u-boot-nodtb-stm32mp13.bin \
--hw-config u-boot-stm32mp135d-atk-trusted.dtb \
--fw-config fwconfig/stm32mp135d-atk-fw-config-optee.dtb \
--tos-fw tee-header_v2-stm32mp135d-atk.bin \
--tos-fw-extra1 tee-pager_v2-stm32mp135d-atk.bin \
--tos-fw-extra2 tee-pageable_v2-stm32mp135d-atk.bin \
${FIP_TARGET_DIR}/fip-stm32mp135d-atk-optee.bin

