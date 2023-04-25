# Build Linux Kernel

There are two ways

1. run scripts/build-linux-5.15.108-zynqmp-fpga-generic.sh (easy)
2. run this chapter step-by-step (annoying)

## Download Linux Kernel Source

### Clone from linux-stable.git

```console
shell$ git clone --depth 1 -b v5.15.108 git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux-5.15.108-zynqmp-fpga-generic
```

### Make Branch linux-5.15.108-zynqmp-fpga-generic

```console
shell$ cd linux-5.15.108-zynqmp-fpga-generic
shell$ git checkout -b 5.15.108-zynqmp-fpga-generic refs/tags/v5.15.108
```

## Patch to Linux Kernel

### Patch for linux-xlnx-v2022.2

```console
shell$ sh ../patches/linux-5.15.108-xlnx-v2022.2/0xx_patch.sh
```

### Patch for builddeb

```console
shell$ patch -p1 < ../patches/linux-5.15.108-zynqmp-fpga-builddeb.diff 
shell$ git add --all
shell$ git commit -m "[update] scripts/package/builddeb to add tools/include and postinst script to header package."
```

### Add ATWILC3000 Linux Driver for Ultra96-V2

```console
shell$ rm -rf drivers/staging/wilc3000
shell$ cp -r ../patches/microchip-wilc-driver/wilc1000 drivers/staging/wilc3000
shell$ patch -d drivers/staging/wilc3000 < ../patches/microchip-wilc-driver/0001-ultra96-modifications-15.5.patch
shell$ patch -p1 < ../patches/linux-5.15.108-zynqmp-fpga-wilc3000.diff
shell$ patch -p1 < ../patches/linux-5.15.108-zynqmp-fpga-pwrseq-wilc.diff
shell$ git add --all
shell$ git commit -m "[add] drivers/staging/wilc3000"
```

### Patch for Ultra96

```console
shell$ patch -p1 < ../patches/linux-5.15.108-zynqmp-fpga-ultra96.diff
shell$ git add --all
shell$ git commit -m "[patch] for Ultra96."
```

### Patch for Ultra96-V2

```console
shell$ patch -p1 < ../patches/linux-5.15.108-zynqmp-fpga-ultra96v2.diff 
shell$ git add --all
shell$ git commit -m "[patch] for Ultra96-V2."
```

### Patch for UltraZed-EG IO Carrier Card

```console
shell$ patch -p1 < ../patches/linux-5.15.108-zynqmp-fpga-uz3eg-iocc.diff 
shell$ git add --all
shell$ git commit -m "[patch] for UltraZed-EG IO Carrier Card."
```

### Patch for Kria KV260

```console
shell$ patch -p1 < ../patches/linux-5.15.108-zynqmp-fpga-kv260.diff 
shell$ git add --all
shell$ git commit -m "[patch] for Kria KV260."
```

### Patch for Kria KR260

```console
shell$ patch -p1 < ../patches/linux-5.15.108-zynqmp-fpga-kr260.diff 
shell$ git add --all
shell$ git commit -m "[patch] for Kria KR260."
```

### Add zynqmp_fpga_generic_defconfig

```console
shell$ cp ../files/zynqmp_fpga_generic_defconfig arch/arm64/configs/
shell$ git add arch/arm64/configs/zynqmp_fpga_generic_defconfig
shell$ git commit -m "[add] zynqmp_fpga_generic_defconfig to arch/arm64/configs"
```

### Create tag and .version

```console
shell$ git tag -a 5.15.108-zynqmp-fpga-generic-1 -m "release 5.15.108-zynqmp-fpga-generic-1"
shell$ echo 1 > .version
```

## Build

### Setup for Build 

```console
shell$ cd linux-5.15.108-zynqmp-fpga-generic
shell$ export ARCH=arm64
shell$ export CROSS_COMPILE=aarch64-linux-gnu-
shell$ make zynqmp_fpga_generic_defconfig
```

### Build Linux Kernel and device tree

```console
shell$ export DTC_FLAGS=--symbols
shell$ rm -rf debian
shell$ make deb-pkg
```

### Install kernel image to this repository

```console
shell$ cp arch/arm64/boot/Image.gz ../vmlinuz-5.15.108-zynqmp-fpga-generic-1
shell$ cp .config             ../files/config-5.15.108-zynqmp-fpga-generic-1
```

### Install devicetree to this repository

```console
shell$ install -d ../devicetrees/5.15.108-zynqmp-fpga-generic-1
shell$ cp arch/arm64/boot/dts/xilinx/* ../devicetrees/5.15.108-zynqmp-fpga-generic-1
```