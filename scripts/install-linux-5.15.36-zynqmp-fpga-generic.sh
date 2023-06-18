#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
KERNEL_VERSION=5.15.36
LOCAL_VERSION=zynqmp-fpga-generic
BUILD_VERSION=4

. "$SCRIPT_DIR/install-variables-zynqmp-fpga.sh"
. "$SCRIPT_DIR/install-command.sh"
