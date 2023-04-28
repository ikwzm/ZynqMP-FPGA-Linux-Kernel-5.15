#!/bin/bash

PATCH_DIR=$(cd $(dirname $0); pwd)
KERNEL_VERSION=5.15.108
LOCAL_VERSION=zynqmp-fpga-generic
BUILD_VERSION=2

. "$PATCH_DIR/install-command.sh"
