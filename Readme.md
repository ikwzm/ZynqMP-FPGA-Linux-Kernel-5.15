ZynqMP-FPGA-Linux-5.15-Generic
====================================================================================

Overview
------------------------------------------------------------------------------------

### Introduction

This Repository provides a Linux Kernel (v5.15.108) Image and Device Trees for Zynq MPSoC.

### Note

**The Linux Kernel Image provided in this repository is not official.**

**I modified it to my liking. Please handle with care.**

**Downloading the entire repository takes time, so download the files from URL**

  * https://github.com/ikwzm/ZynqMP-FPGA-Linux-Kernel-5.15/releases/5.15.108-zynqmp-fpga-generic-3

### Features

  * Linux Kernel Version v5.15.108
  * Enable Device Tree Overlay with Configuration File System
  * Enable FPGA Manager
  * Enable FPGA Bridge
  * Enable FPGA Reagion
  * Enable ATWILC3000 Linux Driver for Ultra96-V2

Files
------------------------------------------------------------------------------------

* vmlinuz-5.15.108-zynqmp-fpga-generic-3
* linux-image-5.15.108-zynqmp-fpga-generic_5.15.108-zynqmp-fpga-generic-3_arm64.deb
* linux-headers-5.15.108-zynqmp-fpga-generic_5.15.108-zynqmp-fpga-generic-3_arm64.deb
* ./devicetrees/5.15.108-zynqmp-fpga-generic-3/
  + avnet-ultra96-rev1.dtb
  + avnet-ultra96v2-rev1.dtb
  + zynqmp-uz3eg-iocc.dtb
  + zynqmp-kv260-revB.dtb
  + zynqmp-kr260-revB.dtb
* [./files/config-5.15.108-zynqmp-fpga-generic-3](./files/config-5.15.108-zynqmp-fpga-generic-3)

Build
------------------------------------------------------------------------------------

* [./doc/build/linux-5.15.108-zynqmp-fpga-generic.md](./doc/build/linux-5.15.108-zynqmp-fpga-generic.md)
