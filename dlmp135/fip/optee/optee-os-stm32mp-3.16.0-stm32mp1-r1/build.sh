#!/bin/sh
# script-name: build.sh
# version: 1.0
# date: 2023-04-08
# author: alientek
#本脚本用作编译ATK-DLM135的OP-TEE脚本
#

#删除上层目录的编译文件
rm ../build/ ../deploy/ -rf

#运行编译
make -f ../Makefile.sdk all
