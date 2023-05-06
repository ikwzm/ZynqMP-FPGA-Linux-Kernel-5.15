ZynqMP-FPGA-Linux-5.15
====================================================================================

Overview
------------------------------------------------------------------------------------

### Introduction

This Repository provides a Linux Kernel (v5.15.x) Image and Device Trees for Zynq MPSoC.

### Note

**The Linux Kernel Image provided in this repository is not official.**
**I modified it to my liking. Please handle with care.**

### Features

  * Linux Kernel Version v5.15.x
  * Enable Device Tree Overlay with Configuration File System
  * Enable FPGA Manager
  * Enable FPGA Bridge
  * Enable FPGA Reagion
  * Enable ATWILC3000 Linux Driver for Ultra96-V2

Release
------------------------------------------------------------------------------------

The main branch contains only Readme.md.     
For Linux Kernel image and Debian Packages, please refer to the respective release tag listed below.

| Version  | Local Name          | Build Version | Release Tag |
|:---------|:--------------------|:--------------|:------------|
| 5.15.108 | zynqmp-fpga-trial   | 2             | [5.15.108-zynqmp-fpga-trial-2](https://github.com/ikwzm/ZynqMP-FPGA-Linux-Kernel-5.15/tree/5.15.108-zynqmp-fpga-trial-2) |
| 5.15.108 | zynqmp-fpga-generic | 7             | [5.15.108-zynqmp-fpga-generic-7](https://github.com/ikwzm/ZynqMP-FPGA-Linux-Kernel-5.15/tree/5.15.108-zynqmp-fpga-generic-7) || 5.15.108 | zynqmp-fpga-generic | 5             | [5.15.108-zynqmp-fpga-generic-5](https://github.com/ikwzm/ZynqMP-FPGA-Linux-Kernel-5.15/tree/5.15.108-zynqmp-fpga-generic-5) |
| 5.15.107 | zynqmp-fpga-generic | 4             | [5.15.107-zynqmp-fpga-generic-4](https://github.com/ikwzm/ZynqMP-FPGA-Linux-Kernel-5.15/tree/5.15.107-zynqmp-fpga-generic-4) |
| 5.15.36  | zynqmp-fpga-generic | 4             | [5.15.36-zynqmp-fpga-generic-4](https://github.com/ikwzm/ZynqMP-FPGA-Linux-Kernel-5.15/tree/5.15.36-zynqmp-fpga-generic-4) |

Download
------------------------------------------------------------------------------------

```console
shell$ export RELEASE_TAG=5.15.108-zynqmp-fpga-generic-7
shell$ wget https://github.com/ikwzm/ZynqMP-FPGA-Linux-Kernel-5.15/archive/refs/tags/$RELEASE_TAG.tar.gz
shell$ tar xfz $RELEASE_TAG.tar.gz
shell$ cd ZynqMP-FPGA-Linux-Kernel-5.15-$RELEASE_TAG
```
