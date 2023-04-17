ZynqMP-FPGA-Linux-5.15-Generic
====================================================================================

Overview
------------------------------------------------------------------------------------

### Introduction

This Repository provides a Linux Kernel (v5.15.36) Image and Device Trees for Zynq MPSoC.

### Note

**The Linux Kernel Image provided in this repository is not official.**

**I modified it to my liking. Please handle with care.**

** Downloading the entire repository takes time, so download the files from URL**

  * https://github.com/ikwzm/ZynqMP-FPGA-Linux-Kernel-5.15/releases/5.15.36-zynqmp-fpga-generic-4


### Features

  * Linux Kernel Version v5.15.36
  * Enable Device Tree Overlay with Configuration File System
  * Enable FPGA Manager
  * Enable FPGA Bridge
  * Enable FPGA Reagion
  * Enable ATWILC3000 Linux Driver for Ultra96-V2

Files
------------------------------------------------------------------------------------

* vmlinuz-5.15.36-zynqmp-fpga-generic-4
* linux-image-5.15.36-zynqmp-fpga-generic_5.15.36-zynqmp-fpga-generic-4_arm64.deb
* linux-headers-5.15.36-zynqmp-fpga-generic_5.15.36-zynqmp-fpga-generic-4_arm64.deb
* ./devicetrees/5.15.36-zynqmp-fpga-generic-4/
  + avnet-ultra96-rev1.dtb
  + avnet-ultra96v2-rev1.dtb
  + zynqmp-uz3eg-iocc.dtb
  + zynqmp-smk-k26-revA-sck-kv-g-revB.dtb
* [./files/config-5.15.36-zynqmp-fpga-generic-4](./files/config-5.15.36-zynqmp-fpga-generic-4)

Build
------------------------------------------------------------------------------------

* [./doc/build/linux-5.15.36-zynqmp-fpga-generic.md](./doc/build/linux-5.15.36-zynqmp-fpga-generic.md)
