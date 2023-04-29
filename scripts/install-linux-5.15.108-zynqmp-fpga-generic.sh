#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
REPO_DIR=$(cd $(dirname $0); cd .. ; pwd)
KERNEL_VERSION=5.15.108
LOCAL_VERSION=zynqmp-fpga-generic
BUILD_VERSION=4

. "$SCRIPT_DIR/install-command.sh"
