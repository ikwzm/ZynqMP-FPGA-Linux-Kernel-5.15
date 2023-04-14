PATCH_DIR=./patches/linux-5.15.36-xlnx-v2022.2
install -d $PATCH_DIR

# arch/arm/mach-zynq

PATCH_FILE=$PATCH_DIR/001_arch-arm-mach-zynq.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/arch/arm/mach-zynq/Kconfig                                                                      linux-xlnx-2022.2/arch/arm/mach-zynq/Kconfig                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/mach-zynq/Makefile                                                                     linux-xlnx-2022.2/arch/arm/mach-zynq/Makefile                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/mach-zynq/common.c                                                                     linux-xlnx-2022.2/arch/arm/mach-zynq/common.c                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/mach-zynq/common.h                                                                     linux-xlnx-2022.2/arch/arm/mach-zynq/common.h                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/mach-zynq/efuse.c --label=/dev/null                                                    linux-xlnx-2022.2/arch/arm/mach-zynq/efuse.c                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/mach-zynq/platsmp.c                                                                    linux-xlnx-2022.2/arch/arm/mach-zynq/platsmp.c                                                  >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/mach-zynq/pm.c                                                                         linux-xlnx-2022.2/arch/arm/mach-zynq/pm.c                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/mach-zynq/slcr.c                                                                       linux-xlnx-2022.2/arch/arm/mach-zynq/slcr.c                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/mach-zynq/suspend.S --label=/dev/null                                                  linux-xlnx-2022.2/arch/arm/mach-zynq/suspend.S                                                  >>$PATCH_FILE 

# arch/arm/boot/dts

PATCH_FILE=$PATCH_DIR/002_arch-arm-boot-dts.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/arm/cpus.yaml                                                 linux-xlnx-2022.2/Documentation/devicetree/bindings/arm/cpus.yaml                               >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/arm/xilinx.yaml                                               linux-xlnx-2022.2/Documentation/devicetree/bindings/arm/xilinx.yaml                             >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/arm/zynq --label=/dev/null                                    linux-xlnx-2022.2/Documentation/devicetree/bindings/arm/zynq                                    >>$PATCH_FILE 

diff -urN linux-5.15.36/arch/arm/boot/dts/zynq-7000.dtsi                                                                linux-xlnx-2022.2/arch/arm/boot/dts/zynq-7000.dtsi                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/boot/dts/zynq-cc108.dts                                                                linux-xlnx-2022.2/arch/arm/boot/dts/zynq-cc108.dts                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/boot/dts/zynq-zc702.dts                                                                linux-xlnx-2022.2/arch/arm/boot/dts/zynq-zc702.dts                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/boot/dts/zynq-zc706.dts                                                                linux-xlnx-2022.2/arch/arm/boot/dts/zynq-zc706.dts                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/boot/dts/zynq-zc770-xm010.dts                                                          linux-xlnx-2022.2/arch/arm/boot/dts/zynq-zc770-xm010.dts                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/boot/dts/zynq-zc770-xm011.dts                                                          linux-xlnx-2022.2/arch/arm/boot/dts/zynq-zc770-xm011.dts                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/boot/dts/zynq-zc770-xm012.dts                                                          linux-xlnx-2022.2/arch/arm/boot/dts/zynq-zc770-xm012.dts                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/boot/dts/zynq-zc770-xm013.dts                                                          linux-xlnx-2022.2/arch/arm/boot/dts/zynq-zc770-xm013.dts                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/boot/dts/zynq-zed.dts                                                                  linux-xlnx-2022.2/arch/arm/boot/dts/zynq-zed.dts                                                >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm/boot/dts/zynq-zybo.dts                                                                 linux-xlnx-2022.2/arch/arm/boot/dts/zynq-zybo.dts                                               >>$PATCH_FILE 

# arch/arm/configs

PATCH_FILE=$PATCH_DIR/003_arch-arm-configs.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/arch/arm/configs/xilinx_zynq_defconfig --label=/dev/null                                        linux-xlnx-2022.2/arch/arm/configs/xilinx_zynq_defconfig                                        >>$PATCH_FILE 

# arch/arm64/boot/dts

PATCH_FILE=$PATCH_DIR/004_arch-arm64-boot-dts.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/Makefile                                                             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/Makefile                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/avnet-ultra96-rev1.dts                                               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/avnet-ultra96-rev1.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-clk.dtsi --label=/dev/null                                    linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-clk.dtsi                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-net-emu-rev1.9.dts --label=/dev/null                          linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-net-emu-rev1.9.dts                          >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-net-ipp-rev1.9-ospi.dts --label=/dev/null                     linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-net-ipp-rev1.9-ospi.dts                     >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-net-ipp-rev1.9.dts --label=/dev/null                          linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-net-ipp-rev1.9.dts                          >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-v350-revA.dts --label=/dev/null                               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-v350-revA.dts                               >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA-x-prc-01-revA-ospi.dts --label=/dev/null   linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA-x-prc-01-revA-ospi.dts   >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA-x-prc-01-revA.dts --label=/dev/null        linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA-x-prc-01-revA.dts        >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA-x-prc-02-revA.dts --label=/dev/null        linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA-x-prc-02-revA.dts        >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA-x-prc-03-revA.dts --label=/dev/null        linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA-x-prc-03-revA.dts        >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA-x-prc-04-revA-ospi.dts --label=/dev/null   linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA-x-prc-04-revA-ospi.dts   >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA-x-prc-04-revA.dts --label=/dev/null        linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA-x-prc-04-revA.dts        >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA-x-prc-05-revA.dts --label=/dev/null        linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA-x-prc-05-revA.dts        >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA.dts --label=/dev/null                      linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vc-p-a2197-00-revA.dts                      >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vck190-rev1.1-x-ebm-01-revA.dts --label=/dev/null             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vck190-rev1.1-x-ebm-01-revA.dts             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vck190-rev1.1-x-ebm-02-revA.dts --label=/dev/null             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vck190-rev1.1-x-ebm-02-revA.dts             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vck190-rev1.1-x-ebm-03-revA.dts --label=/dev/null             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vck190-rev1.1-x-ebm-03-revA.dts             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vck190-rev1.1.dts --label=/dev/null                           linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vck190-rev1.1.dts                           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vck190-revA-x-ebm-01-revA.dts --label=/dev/null               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vck190-revA-x-ebm-01-revA.dts               >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vck190-revA-x-ebm-02-revA.dts --label=/dev/null               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vck190-revA-x-ebm-02-revA.dts               >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vck190-revA-x-ebm-03-revA.dts --label=/dev/null               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vck190-revA-x-ebm-03-revA.dts               >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vck190-revA.dts --label=/dev/null                             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vck190-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vck5000-revA.dts --label=/dev/null                            linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vck5000-revA.dts                            >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vek280-revA.dts --label=/dev/null                             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vek280-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vhk158-revA.dts --label=/dev/null                             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vhk158-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vmk180-rev1.1-x-ebm-01-revA.dts --label=/dev/null             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vmk180-rev1.1-x-ebm-01-revA.dts             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vmk180-rev1.1-x-ebm-02-revA.dts --label=/dev/null             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vmk180-rev1.1-x-ebm-02-revA.dts             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vmk180-rev1.1-x-ebm-03-revA.dts --label=/dev/null             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vmk180-rev1.1-x-ebm-03-revA.dts             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vmk180-rev1.1.dts --label=/dev/null                           linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vmk180-rev1.1.dts                           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vmk180-revA-x-ebm-01-revA.dts --label=/dev/null               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vmk180-revA-x-ebm-01-revA.dts               >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vmk180-revA-x-ebm-02-revA.dts --label=/dev/null               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vmk180-revA-x-ebm-02-revA.dts               >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vmk180-revA-x-ebm-03-revA.dts --label=/dev/null               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vmk180-revA-x-ebm-03-revA.dts               >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vmk180-revA.dts --label=/dev/null                             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vmk180-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vp-x-a2785-00-revA.dts --label=/dev/null                      linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vp-x-a2785-00-revA.dts                      >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vpk120-revA.dts --label=/dev/null                             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vpk120-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vpk120-revB.dts --label=/dev/null                             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vpk120-revB.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-vpk180-revA.dts --label=/dev/null                             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-vpk180-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-x-ebm-01-revA.dts --label=/dev/null                           linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-x-ebm-01-revA.dts                           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-x-ebm-01-revA.dtsi --label=/dev/null                          linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-x-ebm-01-revA.dtsi                          >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-x-ebm-02-revA.dts --label=/dev/null                           linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-x-ebm-02-revA.dts                           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-x-ebm-02-revA.dtsi --label=/dev/null                          linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-x-ebm-02-revA.dtsi                          >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-x-ebm-03-revA.dts --label=/dev/null                           linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-x-ebm-03-revA.dts                           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal-x-ebm-03-revA.dtsi --label=/dev/null                          linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal-x-ebm-03-revA.dtsi                          >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/versal.dtsi --label=/dev/null                                        linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/versal.dtsi                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-a2197-revA.dts --label=/dev/null                              linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-a2197-revA.dts                              >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi                                                  linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi                                >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi --label=/dev/null                                    linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-dlc21-revA.dts --label=/dev/null                              linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-dlc21-revA.dts                              >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-e-a2197-00-revA.dts --label=/dev/null                         linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-e-a2197-00-revA.dts                         >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-e-a2197-00-revB.dts --label=/dev/null                         linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-e-a2197-00-revB.dts                         >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-g-a2197-00-revA.dts --label=/dev/null                         linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-g-a2197-00-revA.dts                         >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-m-a2197-01-revA.dts --label=/dev/null                         linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-m-a2197-01-revA.dts                         >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-m-a2197-02-revA.dts --label=/dev/null                         linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-m-a2197-02-revA.dts                         >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-m-a2197-03-revA.dts --label=/dev/null                         linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-m-a2197-03-revA.dts                         >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-p-a2197-00-revA-x-prc-01-revA.dts --label=/dev/null           linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-p-a2197-00-revA-x-prc-01-revA.dts           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-p-a2197-00-revA-x-prc-02-revA.dts --label=/dev/null           linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-p-a2197-00-revA-x-prc-02-revA.dts           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-p-a2197-00-revA-x-prc-03-revA.dts --label=/dev/null           linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-p-a2197-00-revA-x-prc-03-revA.dts           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-p-a2197-00-revA-x-prc-04-revA.dts --label=/dev/null           linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-p-a2197-00-revA-x-prc-04-revA.dts           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-p-a2197-00-revA-x-prc-05-revA.dts --label=/dev/null           linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-p-a2197-00-revA-x-prc-05-revA.dts           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-p-a2197-00-revA.dts --label=/dev/null                         linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-p-a2197-00-revA.dts                         >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-sc-revB.dts --label=/dev/null                                 linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-sc-revB.dts                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-sc-vek280-revA.dts --label=/dev/null                          linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-sc-vek280-revA.dts                          >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-sc-vhk158-revA.dts --label=/dev/null                          linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-sc-vhk158-revA.dts                          >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-sc-vpk120-revB.dts --label=/dev/null                          linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-sc-vpk120-revB.dts                          >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-sc-vpk180-revA.dts --label=/dev/null                          linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-sc-vpk180-revA.dts                          >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revA.dts --label=/dev/null                           linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revA.dts                           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revB.dts --label=/dev/null                           linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-sck-kr-g-revB.dts                           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dts --label=/dev/null                           linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dts                           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revB.dts --label=/dev/null                           linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revB.dts                           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts --label=/dev/null                             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-smk-k26-revA.dts --label=/dev/null                            linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-smk-k26-revA.dts                            >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-vp-x-a2785-00-revA.dts --label=/dev/null                      linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-vp-x-a2785-00-revA.dts                      >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-vpk120-revA.dts --label=/dev/null                             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-vpk120-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zc1232-revA.dts                                               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zc1232-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zc1254-revA.dts                                               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zc1254-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts                                          linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts                        >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts                                          linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts                        >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts                                          linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts                        >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts                                          linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts                        >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts                                          linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts                        >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts                                               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.0.dts                                             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.0.dts                           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.1.dts --label=/dev/null                           linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.1.dts                           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts                                               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revB.dts                                               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revB.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts                                               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts                                               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts                                               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts                                               linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu1275-revA.dts --label=/dev/null                            linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu1275-revA.dts                            >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu1275-revB.dts --label=/dev/null                            linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu1275-revB.dts                            >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu1285-revA.dts --label=/dev/null                            linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu1285-revA.dts                            >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu208-revA.dts --label=/dev/null                             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu208-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu216-revA.dts --label=/dev/null                             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu216-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu670-revA.dts --label=/dev/null                             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu670-revA.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp-zcu670-revB.dts --label=/dev/null                             linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp-zcu670-revB.dts                             >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/boot/dts/xilinx/zynqmp.dtsi                                                          linux-xlnx-2022.2/arch/arm64/boot/dts/xilinx/zynqmp.dtsi                                        >>$PATCH_FILE 

# arch/arm64/configs

PATCH_FILE=$PATCH_DIR/005_arch-arm64-configs.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/arch/arm64/configs/xilinx_defconfig --label=/dev/null                                           linux-xlnx-2022.2/arch/arm64/configs/xilinx_defconfig                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/configs/xilinx_versal_defconfig --label=/dev/null                                    linux-xlnx-2022.2/arch/arm64/configs/xilinx_versal_defconfig                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/configs/xilinx_versal_net_defconfig --label=/dev/null                                linux-xlnx-2022.2/arch/arm64/configs/xilinx_versal_net_defconfig                                >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/configs/xilinx_zynqmp_defconfig --label=/dev/null                                    linux-xlnx-2022.2/arch/arm64/configs/xilinx_zynqmp_defconfig                                    >>$PATCH_FILE 

# include/linux/cpuhotplug.h

PATCH_FILE=$PATCH_DIR/006_cpuhotplug.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/include/linux/cpuhotplug.h                                                                      linux-xlnx-2022.2/include/linux/cpuhotplug.h                                                    >>$PATCH_FILE 

# drivers/ata

PATCH_FILE=$PATCH_DIR/010_drivers-ata.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/ata/ceva,ahci-1v84.yaml --label=/dev/null                     linux-xlnx-2022.2/Documentation/devicetree/bindings/ata/ceva,ahci-1v84.yaml                     >>$PATCH_FILE 

# drivers/bluetooth

PATCH_FILE=$PATCH_DIR/011_drivers-bluetooth.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/drivers/bluetooth/hci_ll.c                                                                      linux-xlnx-2022.2/drivers/bluetooth/hci_ll.c                                                    >>$PATCH_FILE 

# drivers/clk

PATCH_FILE=$PATCH_DIR/012_drivers-clk.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/timer/cdns,ttc.yaml                                           linux-xlnx-2022.2/Documentation/devicetree/bindings/timer/cdns,ttc.yaml                         >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/clock/idt,idt8t49n24x.txt --label=/dev/null                   linux-xlnx-2022.2/Documentation/devicetree/bindings/clock/idt,idt8t49n24x.txt                   >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/clock/renesas,versaclock7.yaml --label=/dev/null              linux-xlnx-2022.2/Documentation/devicetree/bindings/clock/renesas,versaclock7.yaml              >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/clock/silabs,si5324.txt --label=/dev/null                     linux-xlnx-2022.2/Documentation/devicetree/bindings/clock/silabs,si5324.txt                     >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml --label=/dev/null             linux-xlnx-2022.2/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml             >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/clock/xlnx,vcu.txt --label=/dev/null                          linux-xlnx-2022.2/Documentation/devicetree/bindings/clock/xlnx,vcu.txt                          >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml                                    linux-xlnx-2022.2/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml                  >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/clock/xlnx,versal-wiz.yaml --label=/dev/null                  linux-xlnx-2022.2/Documentation/devicetree/bindings/clock/xlnx,versal-wiz.yaml                  >>$PATCH_FILE 

diff -urN linux-5.15.36/include/linux/clk/zynq.h                                                                        linux-xlnx-2022.2/include/linux/clk/zynq.h                                                      >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/clk/Kconfig                                                                             linux-xlnx-2022.2/drivers/clk/Kconfig                                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clk/Makefile                                                                            linux-xlnx-2022.2/drivers/clk/Makefile                                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clk/clk-si5324.c --label=/dev/null                                                      linux-xlnx-2022.2/drivers/clk/clk-si5324.c                                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clk/clk-si5324.h --label=/dev/null                                                      linux-xlnx-2022.2/drivers/clk/clk-si5324.h                                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clk/clk-versaclock7.c --label=/dev/null                                                 linux-xlnx-2022.2/drivers/clk/clk-versaclock7.c                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clk/clk-xlnx-clock-wizard-v.c --label=/dev/null                                         linux-xlnx-2022.2/drivers/clk/clk-xlnx-clock-wizard-v.c                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clk/clk-xlnx-clock-wizard.c --label=/dev/null                                           linux-xlnx-2022.2/drivers/clk/clk-xlnx-clock-wizard.c                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clk/idt --label=/dev/null                                                               linux-xlnx-2022.2/drivers/clk/idt                                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clk/si5324.h --label=/dev/null                                                          linux-xlnx-2022.2/drivers/clk/si5324.h                                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clk/si5324drv.c --label=/dev/null                                                       linux-xlnx-2022.2/drivers/clk/si5324drv.c                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clk/si5324drv.h --label=/dev/null                                                       linux-xlnx-2022.2/drivers/clk/si5324drv.h                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clk/xilinx/xlnx_vcu.c                                                                   linux-xlnx-2022.2/drivers/clk/xilinx/xlnx_vcu.c                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clk/zynq/clkc.c                                                                         linux-xlnx-2022.2/drivers/clk/zynq/clkc.c                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clk/zynq/pll.c                                                                          linux-xlnx-2022.2/drivers/clk/zynq/pll.c                                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clk/zynqmp/clkc.c                                                                       linux-xlnx-2022.2/drivers/clk/zynqmp/clkc.c                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clk/zynqmp/divider.c                                                                    linux-xlnx-2022.2/drivers/clk/zynqmp/divider.c                                                  >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/clocksource/timer-cadence-ttc.c                                                         linux-xlnx-2022.2/drivers/clocksource/timer-cadence-ttc.c                                       >>$PATCH_FILE 

# drivers/crypto

PATCH_FILE=$PATCH_DIR/013_drivers-crypto.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/crypto/zynqmp-rsa.txt --label=/dev/null                       linux-xlnx-2022.2/Documentation/devicetree/bindings/crypto/zynqmp-rsa.txt                       >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/crypto/zynqmp-sha.txt --label=/dev/null                       linux-xlnx-2022.2/Documentation/devicetree/bindings/crypto/zynqmp-sha.txt                       >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/crypto/Kconfig                                                                          linux-xlnx-2022.2/drivers/crypto/Kconfig                                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/crypto/Makefile                                                                         linux-xlnx-2022.2/drivers/crypto/Makefile                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/crypto/xilinx/Makefile                                                                  linux-xlnx-2022.2/drivers/crypto/xilinx/Makefile                                                >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/crypto/xilinx/zynqmp-aes.c --label=/dev/null                                            linux-xlnx-2022.2/drivers/crypto/xilinx/zynqmp-aes.c                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/crypto/xilinx/zynqmp-rsa.c --label=/dev/null                                            linux-xlnx-2022.2/drivers/crypto/xilinx/zynqmp-rsa.c                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/crypto/xilinx/zynqmp-sha-deprecated.c --label=/dev/null                                 linux-xlnx-2022.2/drivers/crypto/xilinx/zynqmp-sha-deprecated.c                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/crypto/xilinx/zynqmp-sha.c --label=/dev/null                                            linux-xlnx-2022.2/drivers/crypto/xilinx/zynqmp-sha.c                                            >>$PATCH_FILE 

# drivers/dma

PATCH_FILE=$PATCH_DIR/014_drivers-dma.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/dma/xilinx/axi-dma.txt --label=/dev/null                      linux-xlnx-2022.2/Documentation/devicetree/bindings/dma/xilinx/axi-dma.txt                      >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/dma/xilinx/vdmatest.txt --label=/dev/null                     linux-xlnx-2022.2/Documentation/devicetree/bindings/dma/xilinx/vdmatest.txt                     >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/dma/xilinx/xilinx_dma.txt                                     linux-xlnx-2022.2/Documentation/devicetree/bindings/dma/xilinx/xilinx_dma.txt                   >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/dma/xilinx/xilinx_frmbuf.txt --label=/dev/null                linux-xlnx-2022.2/Documentation/devicetree/bindings/dma/xilinx/xilinx_frmbuf.txt                >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/dma/xilinx/xlnx,zynqmp_dma.yaml --label=/dev/null             linux-xlnx-2022.2/Documentation/devicetree/bindings/dma/xilinx/xlnx,zynqmp_dma.yaml             >>$PATCH_FILE 

diff -urN linux-5.15.36/include/linux/dma/xilinx_frmbuf.h --label=/dev/null                                             linux-xlnx-2022.2/include/linux/dma/xilinx_frmbuf.h                                             >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/dma/Kconfig                                                                             linux-xlnx-2022.2/drivers/dma/Kconfig                                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/dma/pl330.c                                                                             linux-xlnx-2022.2/drivers/dma/pl330.c                                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/dma/xilinx/Makefile                                                                     linux-xlnx-2022.2/drivers/dma/xilinx/Makefile                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/dma/xilinx/axidmatest.c --label=/dev/null                                               linux-xlnx-2022.2/drivers/dma/xilinx/axidmatest.c                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/dma/xilinx/vdmatest.c --label=/dev/null                                                 linux-xlnx-2022.2/drivers/dma/xilinx/vdmatest.c                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/dma/xilinx/xilinx_dma.c                                                                 linux-xlnx-2022.2/drivers/dma/xilinx/xilinx_dma.c                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/dma/xilinx/xilinx_dpdma.c                                                               linux-xlnx-2022.2/drivers/dma/xilinx/xilinx_dpdma.c                                             >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/dma/xilinx/xilinx_frmbuf.c --label=/dev/null                                            linux-xlnx-2022.2/drivers/dma/xilinx/xilinx_frmbuf.c                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/dma/xilinx/zynqmp_dma.c                                                                 linux-xlnx-2022.2/drivers/dma/xilinx/zynqmp_dma.c                                               >>$PATCH_FILE 

# drivers/edac

PATCH_FILE=$PATCH_DIR/015_drivers-edac.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/ABI/testing/sysfs-driver-cortexa53-edac --label=/dev/null                         linux-xlnx-2022.2/Documentation/ABI/testing/sysfs-driver-cortexa53-edac                         >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/edac/cortex-arm64-edac.txt --label=/dev/null                  linux-xlnx-2022.2/Documentation/devicetree/bindings/edac/cortex-arm64-edac.txt                  >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/edac/pl310_edac_l2.txt --label=/dev/null                      linux-xlnx-2022.2/Documentation/devicetree/bindings/edac/pl310_edac_l2.txt                      >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/edac/xlnx,versal-ddrmc-edac.yaml --label=/dev/null            linux-xlnx-2022.2/Documentation/devicetree/bindings/edac/xlnx,versal-ddrmc-edac.yaml            >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/edac/xlnx,versal-xilsem-edac.yaml --label=/dev/null           linux-xlnx-2022.2/Documentation/devicetree/bindings/edac/xlnx,versal-xilsem-edac.yaml           >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/edac/xlnx,zynqmp-ocmc.yaml --label=/dev/null                  linux-xlnx-2022.2/Documentation/devicetree/bindings/edac/xlnx,zynqmp-ocmc.yaml                  >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/edac/zynqmp_ocm_edac.txt --label=/dev/null                    linux-xlnx-2022.2/Documentation/devicetree/bindings/edac/zynqmp_ocm_edac.txt                    >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/edac/Kconfig                                                                            linux-xlnx-2022.2/drivers/edac/Kconfig                                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/edac/Makefile                                                                           linux-xlnx-2022.2/drivers/edac/Makefile                                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/edac/cortex_arm64_edac.c --label=/dev/null                                              linux-xlnx-2022.2/drivers/edac/cortex_arm64_edac.c                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/edac/pl310_edac_l2.c --label=/dev/null                                                  linux-xlnx-2022.2/drivers/edac/pl310_edac_l2.c                                                  >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/edac/synopsys_edac.c                                                                    linux-xlnx-2022.2/drivers/edac/synopsys_edac.c                                                  >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/edac/xilinx_ddrmc_edac.c --label=/dev/null                                              linux-xlnx-2022.2/drivers/edac/xilinx_ddrmc_edac.c                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/edac/xilinx_xilsem_edac.c --label=/dev/null                                             linux-xlnx-2022.2/drivers/edac/xilinx_xilsem_edac.c                                             >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/edac/zynqmp_ocm_edac.c --label=/dev/null                                                linux-xlnx-2022.2/drivers/edac/zynqmp_ocm_edac.c                                                >>$PATCH_FILE 

# drivers/firmware

PATCH_FILE=$PATCH_DIR/016_drivers-firmware.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp                                           linux-xlnx-2022.2/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp                         >>$PATCH_FILE 

diff -urN linux-5.15.36/include/linux/firmware/xlnx-error-events.h --label=/dev/null                                    linux-xlnx-2022.2/include/linux/firmware/xlnx-error-events.h                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/include/linux/firmware/xlnx-event-manager.h --label=/dev/null                                   linux-xlnx-2022.2/include/linux/firmware/xlnx-event-manager.h                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/include/linux/firmware/xlnx-zynqmp.h                                                            linux-xlnx-2022.2/include/linux/firmware/xlnx-zynqmp.h                                          >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/firmware/xilinx/Kconfig                                                                 linux-xlnx-2022.2/drivers/firmware/xilinx/Kconfig                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/firmware/xilinx/Makefile                                                                linux-xlnx-2022.2/drivers/firmware/xilinx/Makefile                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/firmware/xilinx/zynqmp-debug.c                                                          linux-xlnx-2022.2/drivers/firmware/xilinx/zynqmp-debug.c                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/firmware/xilinx/zynqmp-secure.c --label=/dev/null                                       linux-xlnx-2022.2/drivers/firmware/xilinx/zynqmp-secure.c                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/firmware/xilinx/zynqmp.c                                                                linux-xlnx-2022.2/drivers/firmware/xilinx/zynqmp.c                                              >>$PATCH_FILE 

# drivers/fpga

PATCH_FILE=$PATCH_DIR/017_drivers-fpga.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/ABI/testing/sysfs-class-fpga-bridge                                               linux-xlnx-2022.2/Documentation/ABI/testing/sysfs-class-fpga-bridge                             >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/fpga/fpga-region.txt                                          linux-xlnx-2022.2/Documentation/devicetree/bindings/fpga/fpga-region.txt                        >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/fpga/xlnx,afi-fpga.txt --label=/dev/null                      linux-xlnx-2022.2/Documentation/devicetree/bindings/fpga/xlnx,afi-fpga.txt                      >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/fpga/xlnx,zynq-afi-fpga.txt --label=/dev/null                 linux-xlnx-2022.2/Documentation/devicetree/bindings/fpga/xlnx,zynq-afi-fpga.txt                 >>$PATCH_FILE 

diff -urN linux-5.15.36/include/linux/fpga/fpga-mgr.h                                                                   linux-xlnx-2022.2/include/linux/fpga/fpga-mgr.h                                                 >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/fpga/Kconfig                                                                            linux-xlnx-2022.2/drivers/fpga/Kconfig                                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/fpga/Makefile                                                                           linux-xlnx-2022.2/drivers/fpga/Makefile                                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/fpga/fpga-bridge.c                                                                      linux-xlnx-2022.2/drivers/fpga/fpga-bridge.c                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/fpga/fpga-mgr.c                                                                         linux-xlnx-2022.2/drivers/fpga/fpga-mgr.c                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/fpga/of-fpga-region.c                                                                   linux-xlnx-2022.2/drivers/fpga/of-fpga-region.c                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/fpga/versal-fpga.c                                                                      linux-xlnx-2022.2/drivers/fpga/versal-fpga.c                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/fpga/xilinx-afi.c --label=/dev/null                                                     linux-xlnx-2022.2/drivers/fpga/xilinx-afi.c                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/fpga/zynq-afi.c --label=/dev/null                                                       linux-xlnx-2022.2/drivers/fpga/zynq-afi.c                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/fpga/zynq-fpga.c                                                                        linux-xlnx-2022.2/drivers/fpga/zynq-fpga.c                                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/fpga/zynqmp-fpga.c                                                                      linux-xlnx-2022.2/drivers/fpga/zynqmp-fpga.c                                                    >>$PATCH_FILE 

# drivers/gpio

PATCH_FILE=$PATCH_DIR/018_drivers-gpio.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/gpio/gpio-slg7xl45106.yaml --label=/dev/null                  linux-xlnx-2022.2/Documentation/devicetree/bindings/gpio/gpio-slg7xl45106.yaml                  >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/gpio/gpio-zynq.yaml                                           linux-xlnx-2022.2/Documentation/devicetree/bindings/gpio/gpio-zynq.yaml                         >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/gpio/xlnx,gpio-xilinx.yaml --label=/dev/null                  linux-xlnx-2022.2/Documentation/devicetree/bindings/gpio/xlnx,gpio-xilinx.yaml                  >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/gpio/xlnx,zynqmp-gpio-modepin.yaml --label=/dev/null          linux-xlnx-2022.2/Documentation/devicetree/bindings/gpio/xlnx,zynqmp-gpio-modepin.yaml          >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/gpio/Kconfig                                                                            linux-xlnx-2022.2/drivers/gpio/Kconfig                                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpio/Makefile                                                                           linux-xlnx-2022.2/drivers/gpio/Makefile                                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpio/gpio-slg7xl45106.c --label=/dev/null                                               linux-xlnx-2022.2/drivers/gpio/gpio-slg7xl45106.c                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpio/gpio-xilinx.c                                                                      linux-xlnx-2022.2/drivers/gpio/gpio-xilinx.c                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpio/gpio-zynqmp-modepin.c --label=/dev/null                                            linux-xlnx-2022.2/drivers/gpio/gpio-zynqmp-modepin.c                                            >>$PATCH_FILE 

# drivers/gpu/drm

PATCH_FILE=$PATCH_DIR/019_drivers-gpu-drm.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.txt --label=/dev/null          linux-xlnx-2022.2/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.txt          >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml                           linux-xlnx-2022.2/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml         >>$PATCH_FILE 

diff -urN linux-5.15.36/include/drm/drm_connector.h                                                                     linux-xlnx-2022.2/include/drm/drm_connector.h                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/include/drm/drm_dp_helper.h                                                                     linux-xlnx-2022.2/include/drm/drm_dp_helper.h                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/include/drm/drm_edid.h                                                                          linux-xlnx-2022.2/include/drm/drm_edid.h                                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/include/drm/drm_fourcc.h                                                                        linux-xlnx-2022.2/include/drm/drm_fourcc.h                                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/include/drm/drm_mode_config.h                                                                   linux-xlnx-2022.2/include/drm/drm_mode_config.h                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/include/dt-bindings/drm --label=/dev/null                                                       linux-xlnx-2022.2/include/dt-bindings/drm                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/include/uapi/drm/drm_fourcc.h                                                                   linux-xlnx-2022.2/include/uapi/drm/drm_fourcc.h                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/include/uapi/drm/drm_mode.h                                                                     linux-xlnx-2022.2/include/uapi/drm/drm_mode.h                                                   >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/gpu/drm/drm_atomic_state_helper.c                                                       linux-xlnx-2022.2/drivers/gpu/drm/drm_atomic_state_helper.c                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/drm_atomic_uapi.c                                                               linux-xlnx-2022.2/drivers/gpu/drm/drm_atomic_uapi.c                                             >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/drm_connector.c                                                                 linux-xlnx-2022.2/drivers/gpu/drm/drm_connector.c                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/drm_dp_helper.c                                                                 linux-xlnx-2022.2/drivers/gpu/drm/drm_dp_helper.c                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/drm_edid.c                                                                      linux-xlnx-2022.2/drivers/gpu/drm/drm_edid.c                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/drm_fb_cma_helper.c                                                             linux-xlnx-2022.2/drivers/gpu/drm/drm_fb_cma_helper.c                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/drm_fb_helper.c                                                                 linux-xlnx-2022.2/drivers/gpu/drm/drm_fb_helper.c                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/drm_fourcc.c                                                                    linux-xlnx-2022.2/drivers/gpu/drm/drm_fourcc.c                                                  >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/drm_framebuffer.c                                                               linux-xlnx-2022.2/drivers/gpu/drm/drm_framebuffer.c                                             >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/panel/panel-simple.c                                                            linux-xlnx-2022.2/drivers/gpu/drm/panel/panel-simple.c                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/Kconfig                                                                    linux-xlnx-2022.2/drivers/gpu/drm/xlnx/Kconfig                                                  >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/Makefile                                                                   linux-xlnx-2022.2/drivers/gpu/drm/xlnx/Makefile                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_bridge.c --label=/dev/null                                            linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_bridge.c                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_bridge.h --label=/dev/null                                            linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_bridge.h                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_crtc.c --label=/dev/null                                              linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_crtc.c                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_crtc.h --label=/dev/null                                              linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_crtc.h                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_csc.c --label=/dev/null                                               linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_csc.c                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_dptx.c --label=/dev/null                                              linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_dptx.c                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_drv.c --label=/dev/null                                               linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_drv.c                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_drv.h --label=/dev/null                                               linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_drv.h                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_dsi.c --label=/dev/null                                               linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_dsi.c                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_fb.c --label=/dev/null                                                linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_fb.c                                                >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_fb.h --label=/dev/null                                                linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_fb.h                                                >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_gem.c --label=/dev/null                                               linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_gem.c                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_gem.h --label=/dev/null                                               linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_gem.h                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_hdmi.c --label=/dev/null                                              linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_hdmi.c                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_mixer.c --label=/dev/null                                             linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_mixer.c                                             >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_pl_disp.c --label=/dev/null                                           linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_pl_disp.c                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_scaler.c --label=/dev/null                                            linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_scaler.c                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_sdi.c --label=/dev/null                                               linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_sdi.c                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_sdi_modes.h --label=/dev/null                                         linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_sdi_modes.h                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_sdi_timing.c --label=/dev/null                                        linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_sdi_timing.c                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_sdi_timing.h --label=/dev/null                                        linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_sdi_timing.h                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/xlnx_vtc.c --label=/dev/null                                               linux-xlnx-2022.2/drivers/gpu/drm/xlnx/xlnx_vtc.c                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/zynqmp_disp.c                                                              linux-xlnx-2022.2/drivers/gpu/drm/xlnx/zynqmp_disp.c                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/zynqmp_disp.h                                                              linux-xlnx-2022.2/drivers/gpu/drm/xlnx/zynqmp_disp.h                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/zynqmp_disp_regs.h                                                         linux-xlnx-2022.2/drivers/gpu/drm/xlnx/zynqmp_disp_regs.h                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/zynqmp_dp.c                                                                linux-xlnx-2022.2/drivers/gpu/drm/xlnx/zynqmp_dp.c                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/zynqmp_dp.h                                                                linux-xlnx-2022.2/drivers/gpu/drm/xlnx/zynqmp_dp.h                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/zynqmp_dpsub.c                                                             linux-xlnx-2022.2/drivers/gpu/drm/xlnx/zynqmp_dpsub.c                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/gpu/drm/xlnx/zynqmp_dpsub.h                                                             linux-xlnx-2022.2/drivers/gpu/drm/xlnx/zynqmp_dpsub.h                                           >>$PATCH_FILE 

# drivers/hwmon

PATCH_FILE=$PATCH_DIR/020_drivers-hwmon.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/hwmon/tps544.txt --label=/dev/null                            linux-xlnx-2022.2/Documentation/devicetree/bindings/hwmon/tps544.txt                            >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/hwmon/pmbus/Kconfig                                                                     linux-xlnx-2022.2/drivers/hwmon/pmbus/Kconfig                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/hwmon/pmbus/Makefile                                                                    linux-xlnx-2022.2/drivers/hwmon/pmbus/Makefile                                                  >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/hwmon/pmbus/tps544.c --label=/dev/null                                                  linux-xlnx-2022.2/drivers/hwmon/pmbus/tps544.c                                                  >>$PATCH_FILE 

# drivers/i2c

PATCH_FILE=$PATCH_DIR/021_drivers-i2c.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml                                  linux-xlnx-2022.2/Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml                >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/i2c/busses/i2c-cadence.c                                                                linux-xlnx-2022.2/drivers/i2c/busses/i2c-cadence.c                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/i2c/busses/i2c-xiic.c                                                                   linux-xlnx-2022.2/drivers/i2c/busses/i2c-xiic.c                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/i2c/muxes/i2c-mux-pca954x.c                                                             linux-xlnx-2022.2/drivers/i2c/muxes/i2c-mux-pca954x.c                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/i3c/master/dw-i3c-master.c                                                              linux-xlnx-2022.2/drivers/i3c/master/dw-i3c-master.c                                            >>$PATCH_FILE 

# drivers/iio

PATCH_FILE=$PATCH_DIR/022_drivers-iio.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/iio/adc/ti,ina260.yaml --label=/dev/null                      linux-xlnx-2022.2/Documentation/devicetree/bindings/iio/adc/ti,ina260.yaml                      >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/iio/adc/xilinx-ams.txt --label=/dev/null                      linux-xlnx-2022.2/Documentation/devicetree/bindings/iio/adc/xilinx-ams.txt                      >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/iio/adc/xlnx,versal-sysmon.yaml --label=/dev/null             linux-xlnx-2022.2/Documentation/devicetree/bindings/iio/adc/xlnx,versal-sysmon.yaml             >>$PATCH_FILE 

diff -urN linux-5.15.36/include/linux/iio/adc/versal-sysmon-events.h --label=/dev/null                                  linux-xlnx-2022.2/include/linux/iio/adc/versal-sysmon-events.h                                  >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/iio/adc/Kconfig                                                                         linux-xlnx-2022.2/drivers/iio/adc/Kconfig                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/iio/adc/Makefile                                                                        linux-xlnx-2022.2/drivers/iio/adc/Makefile                                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/iio/adc/ina260-adc.c --label=/dev/null                                                  linux-xlnx-2022.2/drivers/iio/adc/ina260-adc.c                                                  >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/iio/adc/versal-sysmon.c --label=/dev/null                                               linux-xlnx-2022.2/drivers/iio/adc/versal-sysmon.c                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/iio/adc/versal-sysmon.h --label=/dev/null                                               linux-xlnx-2022.2/drivers/iio/adc/versal-sysmon.h                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/iio/adc/xilinx-ams.c --label=/dev/null                                                  linux-xlnx-2022.2/drivers/iio/adc/xilinx-ams.c                                                  >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/iio/adc/xilinx-ams.h --label=/dev/null                                                  linux-xlnx-2022.2/drivers/iio/adc/xilinx-ams.h                                                  >>$PATCH_FILE 

# drivers/irqchip

PATCH_FILE=$PATCH_DIR/023_drivers-irq-chip.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/interrupt-controller/xilinx,intc.txt --label=/dev/null        linux-xlnx-2022.2/Documentation/devicetree/bindings/interrupt-controller/xilinx,intc.txt        >>$PATCH_FILE 

diff -urN linux-5.15.36/include/linux/irq.h                                                                             linux-xlnx-2022.2/include/linux/irq.h                                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/include/linux/irqchip/arm-gic.h                                                                 linux-xlnx-2022.2/include/linux/irqchip/arm-gic.h                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/include/linux/irqchip.h                                                                         linux-xlnx-2022.2/include/linux/irqchip.h                                                       >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/irqchip/Kconfig                                                                         linux-xlnx-2022.2/drivers/irqchip/Kconfig                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/irqchip/irq-gic.c                                                                       linux-xlnx-2022.2/drivers/irqchip/irq-gic.c                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/irqchip/irq-xilinx-intc.c                                                               linux-xlnx-2022.2/drivers/irqchip/irq-xilinx-intc.c                                             >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/irqchip/irqchip.c                                                                       linux-xlnx-2022.2/drivers/irqchip/irqchip.c                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/kernel/irq/handle.c                                                                             linux-xlnx-2022.2/kernel/irq/handle.c                                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/arch/arm64/kernel/irq.c                                                                         linux-xlnx-2022.2/arch/arm64/kernel/irq.c                                                       >>$PATCH_FILE 

# drivers/media/common

PATCH_FILE=$PATCH_DIR/024_drivers-media-common.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/include/media/hdr-ctrls.h --label=/dev/null                                                     linux-xlnx-2022.2/include/media/hdr-ctrls.h                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/include/media/media-entity.h                                                                    linux-xlnx-2022.2/include/media/media-entity.h                                                  >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/media/common/v4l2-tpg/v4l2-tpg-core.c                                                   linux-xlnx-2022.2/drivers/media/common/v4l2-tpg/v4l2-tpg-core.c                                 >>$PATCH_FILE 

# drivers/media/i2c

PATCH_FILE=$PATCH_DIR/025_drivers-media-i2c.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/i2c/onnn,ap1302.yaml --label=/dev/null                  linux-xlnx-2022.2/Documentation/devicetree/bindings/media/i2c/onnn,ap1302.yaml                  >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/media/i2c/Kconfig                                                                       linux-xlnx-2022.2/drivers/media/i2c/Kconfig                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/i2c/Makefile                                                                      linux-xlnx-2022.2/drivers/media/i2c/Makefile                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/i2c/adv7511-v4l2.c                                                                linux-xlnx-2022.2/drivers/media/i2c/adv7511-v4l2.c                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/i2c/ap1302.c --label=/dev/null                                                    linux-xlnx-2022.2/drivers/media/i2c/ap1302.c                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/i2c/ov5640.c                                                                      linux-xlnx-2022.2/drivers/media/i2c/ov5640.c                                                    >>$PATCH_FILE 

# drivers/media/mc

PATCH_FILE=$PATCH_DIR/026_drivers-media-mc.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/drivers/media/mc/mc-entity.c                                                                    linux-xlnx-2022.2/drivers/media/mc/mc-entity.c                                                  >>$PATCH_FILE 

# drivers/media/platform/xilinx

PATCH_FILE=$PATCH_DIR/027_drivers-media-platform-xilinx.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/display/xlnx/bridge.txt --label=/dev/null                     linux-xlnx-2022.2/Documentation/devicetree/bindings/display/xlnx/bridge.txt                     >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/display/xlnx/xlnx,dp-tx.yaml --label=/dev/null                linux-xlnx-2022.2/Documentation/devicetree/bindings/display/xlnx/xlnx,dp-tx.yaml                >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/display/xlnx/xlnx,dsi.txt --label=/dev/null                   linux-xlnx-2022.2/Documentation/devicetree/bindings/display/xlnx/xlnx,dsi.txt                   >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/display/xlnx/xlnx,mixer.txt --label=/dev/null                 linux-xlnx-2022.2/Documentation/devicetree/bindings/display/xlnx/xlnx,mixer.txt                 >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/display/xlnx/xlnx,pl-disp.txt --label=/dev/null               linux-xlnx-2022.2/Documentation/devicetree/bindings/display/xlnx/xlnx,pl-disp.txt               >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/display/xlnx/xlnx,sdi-tx.txt --label=/dev/null                linux-xlnx-2022.2/Documentation/devicetree/bindings/display/xlnx/xlnx,sdi-tx.txt                >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/display/xlnx/xlnx,v-hdmi-txss1.yaml --label=/dev/null         linux-xlnx-2022.2/Documentation/devicetree/bindings/display/xlnx/xlnx,v-hdmi-txss1.yaml         >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/display/xlnx/xlnx,vpss-csc.txt --label=/dev/null              linux-xlnx-2022.2/Documentation/devicetree/bindings/display/xlnx/xlnx,vpss-csc.txt              >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/display/xlnx/xlnx,vpss-scaler.txt --label=/dev/null           linux-xlnx-2022.2/Documentation/devicetree/bindings/display/xlnx/xlnx,vpss-scaler.txt           >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/display/xlnx/xlnx,vtc.txt --label=/dev/null                   linux-xlnx-2022.2/Documentation/devicetree/bindings/display/xlnx/xlnx,vtc.txt                   >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/xlnx,ctrl-vpss.txt --label=/dev/null                          linux-xlnx-2022.2/Documentation/devicetree/bindings/xlnx,ctrl-vpss.txt                          >>$PATCH_FILE 

diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,axis-broadcaster.yaml --label=/dev/null     linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,axis-broadcaster.yaml     >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,axis-subsetconv.yaml --label=/dev/null      linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,axis-subsetconv.yaml      >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml                               linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,csi2rxss.yaml             >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,mem2mem.txt --label=/dev/null               linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,mem2mem.txt               >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.txt --label=/dev/null               linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,sdirxss.txt               >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-axi4s-switch.txt --label=/dev/null        linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-axi4s-switch.txt        >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-cfa.txt --label=/dev/null                 linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-cfa.txt                 >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-cresample.txt --label=/dev/null           linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-cresample.txt           >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-demosaic.txt --label=/dev/null            linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-demosaic.txt            >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-dprxss.yaml --label=/dev/null             linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-dprxss.yaml             >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-gamma-lut.txt --label=/dev/null           linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-gamma-lut.txt           >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-hdmi-rxss1.yaml --label=/dev/null         linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-hdmi-rxss1.yaml         >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-hls.txt --label=/dev/null                 linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-hls.txt                 >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-multi-scaler.txt --label=/dev/null        linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-multi-scaler.txt        >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-remapper.txt --label=/dev/null            linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-remapper.txt            >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-rgb2yuv.txt --label=/dev/null             linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-rgb2yuv.txt             >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-scaler.txt --label=/dev/null              linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-scaler.txt              >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-scd.txt --label=/dev/null                 linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-scd.txt                 >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-switch.txt --label=/dev/null              linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-switch.txt              >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-tpg.txt                                   linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-tpg.txt                 >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-vpss-csc.txt --label=/dev/null            linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-vpss-csc.txt            >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,v-vpss-scaler.txt --label=/dev/null         linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,v-vpss-scaler.txt         >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/media/xilinx/xlnx,video.txt                                   linux-xlnx-2022.2/Documentation/devicetree/bindings/media/xilinx/xlnx,video.txt                 >>$PATCH_FILE 

diff -urN linux-5.15.36/usr/include/Makefile                                                                            linux-xlnx-2022.2/usr/include/Makefile                                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/include/dt-bindings/media/xilinx-vip.h                                                          linux-xlnx-2022.2/include/dt-bindings/media/xilinx-vip.h                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/include/uapi/linux/xilinx-hls.h --label=/dev/null                                               linux-xlnx-2022.2/include/uapi/linux/xilinx-hls.h                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/include/uapi/linux/xilinx-sdirxss.h --label=/dev/null                                           linux-xlnx-2022.2/include/uapi/linux/xilinx-sdirxss.h                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/include/uapi/linux/xilinx-v4l2-events.h --label=/dev/null                                       linux-xlnx-2022.2/include/uapi/linux/xilinx-v4l2-events.h                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/include/uapi/linux/xilinx-dprxss.h --label=/dev/null                                            linux-xlnx-2022.2/include/uapi/linux/xilinx-dprxss.h                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/include/linux/xilinx-hdcp1x-cipher.h --label=/dev/null                                          linux-xlnx-2022.2/include/linux/xilinx-hdcp1x-cipher.h                                          >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/media/platform/xilinx/Kconfig                                                           linux-xlnx-2022.2/drivers/media/platform/xilinx/Kconfig                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/Makefile                                                          linux-xlnx-2022.2/drivers/media/platform/xilinx/Makefile                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-axis-broadcaster.c --label=/dev/null                       linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-axis-broadcaster.c                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-axis-subsetconv.c --label=/dev/null                        linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-axis-subsetconv.c                        >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-axis-switch.c --label=/dev/null                            linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-axis-switch.c                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-cfa.c --label=/dev/null                                    linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-cfa.c                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-cresample.c --label=/dev/null                              linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-cresample.c                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-csi2rxss.c                                                 linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-csi2rxss.c                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-demosaic.c --label=/dev/null                               linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-demosaic.c                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-dma.c                                                      linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-dma.c                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-dma.h                                                      linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-dma.h                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-dprxss.c --label=/dev/null                                 linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-dprxss.c                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-gamma-coeff.h --label=/dev/null                            linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-gamma-coeff.h                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-gamma.c --label=/dev/null                                  linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-gamma.c                                  >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-hdcp1x-rx.c --label=/dev/null                              linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-hdcp1x-rx.c                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-hdcp1x-rx.h --label=/dev/null                              linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-hdcp1x-rx.h                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-hdmirx-hw.h --label=/dev/null                              linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-hdmirx-hw.h                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-hdmirxss.c --label=/dev/null                               linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-hdmirxss.c                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-hls-common.h --label=/dev/null                             linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-hls-common.h                             >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-hls.c --label=/dev/null                                    linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-hls.c                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-m2m.c --label=/dev/null                                    linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-m2m.c                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-multi-scaler-coeff.h --label=/dev/null                     linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-multi-scaler-coeff.h                     >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-multi-scaler.c --label=/dev/null                           linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-multi-scaler.c                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-remapper.c --label=/dev/null                               linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-remapper.c                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-rgb2yuv.c --label=/dev/null                                linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-rgb2yuv.c                                >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-scaler.c --label=/dev/null                                 linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-scaler.c                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-scenechange-channel.c --label=/dev/null                    linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-scenechange-channel.c                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-scenechange-dma.c --label=/dev/null                        linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-scenechange-dma.c                        >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-scenechange.c --label=/dev/null                            linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-scenechange.c                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-scenechange.h --label=/dev/null                            linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-scenechange.h                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-sdirxss.c --label=/dev/null                                linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-sdirxss.c                                >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-switch.c --label=/dev/null                                 linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-switch.c                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-tpg.c                                                      linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-tpg.c                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-vip.c                                                      linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-vip.c                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-vip.h                                                      linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-vip.h                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-vipp.c                                                     linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-vipp.c                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-vipp.h                                                     linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-vipp.h                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-vpss-csc.c --label=/dev/null                               linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-vpss-csc.c                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-vpss-scaler.c --label=/dev/null                            linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-vpss-scaler.c                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-vtc.c                                                      linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-vtc.c                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/platform/xilinx/xilinx-vtc.h                                                      linux-xlnx-2022.2/drivers/media/platform/xilinx/xilinx-vtc.h                                    >>$PATCH_FILE 

# drivers/media/test-drivers

PATCH_FILE=$PATCH_DIR/028_drivers-media-test_drivers.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/drivers/media/test-drivers/vivid/vivid-vid-cap.c                                                linux-xlnx-2022.2/drivers/media/test-drivers/vivid/vivid-vid-cap.c                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/test-drivers/vivid/vivid-vid-common.c                                             linux-xlnx-2022.2/drivers/media/test-drivers/vivid/vivid-vid-common.c                           >>$PATCH_FILE 

# drivers/media/usb

PATCH_FILE=$PATCH_DIR/029_drivers-media-usb.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/drivers/media/usb/uvc/uvc_queue.c                                                               linux-xlnx-2022.2/drivers/media/usb/uvc/uvc_queue.c                                             >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/usb/uvc/uvcvideo.h                                                                linux-xlnx-2022.2/drivers/media/usb/uvc/uvcvideo.h                                              >>$PATCH_FILE 

# drivers/media/v4l2-core

PATCH_FILE=$PATCH_DIR/030_drivers-media-v4l2-core.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/userspace-api/media/v4l/biblio.rst                                                linux-xlnx-2022.2/Documentation/userspace-api/media/v4l/biblio.rst                              >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/userspace-api/media/v4l/colorspaces-defs.rst                                      linux-xlnx-2022.2/Documentation/userspace-api/media/v4l/colorspaces-defs.rst                    >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/userspace-api/media/v4l/colorspaces-details.rst                                   linux-xlnx-2022.2/Documentation/userspace-api/media/v4l/colorspaces-details.rst                 >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/userspace-api/media/v4l/subdev-formats.rst                                        linux-xlnx-2022.2/Documentation/userspace-api/media/v4l/subdev-formats.rst                      >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst                                      linux-xlnx-2022.2/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst                    >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/userspace-api/media/videodev2.h.rst.exceptions                                    linux-xlnx-2022.2/Documentation/userspace-api/media/videodev2.h.rst.exceptions                  >>$PATCH_FILE 

diff -urN linux-5.15.36/include/media/v4l2-subdev.h                                                                     linux-xlnx-2022.2/include/media/v4l2-subdev.h                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/include/uapi/linux/media-bus-format.h                                                           linux-xlnx-2022.2/include/uapi/linux/media-bus-format.h                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/include/uapi/linux/v4l2-mediabus.h                                                              linux-xlnx-2022.2/include/uapi/linux/v4l2-mediabus.h                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/include/uapi/linux/v4l2-subdev.h                                                                linux-xlnx-2022.2/include/uapi/linux/v4l2-subdev.h                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/include/uapi/linux/videodev2.h                                                                  linux-xlnx-2022.2/include/uapi/linux/videodev2.h                                                >>$PATCH_FILE 
diff -urN linux-5.15.36/include/uapi/linux/xilinx-v4l2-controls.h                                                       linux-xlnx-2022.2/include/uapi/linux/xilinx-v4l2-controls.h                                     >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/media/v4l2-core/v4l2-common.c                                                           linux-xlnx-2022.2/drivers/media/v4l2-core/v4l2-common.c                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/v4l2-core/v4l2-ioctl.c                                                            linux-xlnx-2022.2/drivers/media/v4l2-core/v4l2-ioctl.c                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/media/v4l2-core/v4l2-subdev.c                                                           linux-xlnx-2022.2/drivers/media/v4l2-core/v4l2-subdev.c                                         >>$PATCH_FILE 

# drivers/mfd

PATCH_FILE=$PATCH_DIR/031_drivers-mfd.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/mfd/syscon.yaml                                               linux-xlnx-2022.2/Documentation/devicetree/bindings/mfd/syscon.yaml                             >>$PATCH_FILE 

diff -urN linux-5.15.36/include/linux/mfd/syscon/xlnx-vcu.h                                                             linux-xlnx-2022.2/include/linux/mfd/syscon/xlnx-vcu.h                                           >>$PATCH_FILE 

# drivers/misc

PATCH_FILE=$PATCH_DIR/032_drivers-misc.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/ABI/testing/sysfs-driver-xilinx-tmr-inject --label=/dev/null                      linux-xlnx-2022.2/Documentation/ABI/testing/sysfs-driver-xilinx-tmr-inject                      >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/ABI/testing/sysfs-driver-xilinx-tmr-manager --label=/dev/null                     linux-xlnx-2022.2/Documentation/ABI/testing/sysfs-driver-xilinx-tmr-manager                     >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/misc/jesd-phy.txt --label=/dev/null                           linux-xlnx-2022.2/Documentation/devicetree/bindings/misc/jesd-phy.txt                           >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/misc/jesd204b.txt --label=/dev/null                           linux-xlnx-2022.2/Documentation/devicetree/bindings/misc/jesd204b.txt                           >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/misc/xlnx,axi-traffic-gen.yaml --label=/dev/null              linux-xlnx-2022.2/Documentation/devicetree/bindings/misc/xlnx,axi-traffic-gen.yaml              >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/misc/xlnx,dpu.yaml --label=/dev/null                          linux-xlnx-2022.2/Documentation/devicetree/bindings/misc/xlnx,dpu.yaml                          >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/misc/xlnx,tmr-inject.yaml --label=/dev/null                   linux-xlnx-2022.2/Documentation/devicetree/bindings/misc/xlnx,tmr-inject.yaml                   >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/misc/xlnx,tmr-manager.yaml --label=/dev/null                  linux-xlnx-2022.2/Documentation/devicetree/bindings/misc/xlnx,tmr-manager.yaml                  >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/misc-devices/xilinx_flex.txt --label=/dev/null                                    linux-xlnx-2022.2/Documentation/misc-devices/xilinx_flex.txt                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/misc-devices/xilinx_trafgen.txt --label=/dev/null                                 linux-xlnx-2022.2/Documentation/misc-devices/xilinx_trafgen.txt                                 >>$PATCH_FILE 

diff -urN linux-5.15.36/include/linux/xlnx-ai-engine.h --label=/dev/null                                                linux-xlnx-2022.2/include/linux/xlnx-ai-engine.h                                                >>$PATCH_FILE 
diff -urN linux-5.15.36/include/uapi/linux/xlnx-ai-engine.h --label=/dev/null                                           linux-xlnx-2022.2/include/uapi/linux/xlnx-ai-engine.h                                           >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/misc/Kconfig                                                                            linux-xlnx-2022.2/drivers/misc/Kconfig                                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/misc/Makefile                                                                           linux-xlnx-2022.2/drivers/misc/Makefile                                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/misc/jesd204b --label=/dev/null                                                         linux-xlnx-2022.2/drivers/misc/jesd204b                                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/misc/xilinx-ai-engine --label=/dev/null                                                 linux-xlnx-2022.2/drivers/misc/xilinx-ai-engine                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/misc/xilinx_flex_pm.c --label=/dev/null                                                 linux-xlnx-2022.2/drivers/misc/xilinx_flex_pm.c                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/misc/xilinx_tmr_inject.c --label=/dev/null                                              linux-xlnx-2022.2/drivers/misc/xilinx_tmr_inject.c                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/misc/xilinx_tmr_manager.c --label=/dev/null                                             linux-xlnx-2022.2/drivers/misc/xilinx_tmr_manager.c                                             >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/misc/xilinx_trafgen.c --label=/dev/null                                                 linux-xlnx-2022.2/drivers/misc/xilinx_trafgen.c                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/misc/xlnx_dpu.c --label=/dev/null                                                       linux-xlnx-2022.2/drivers/misc/xlnx_dpu.c                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/misc/xlnx_dpu.h --label=/dev/null                                                       linux-xlnx-2022.2/drivers/misc/xlnx_dpu.h                                                       >>$PATCH_FILE 

# drivers/mmc

PATCH_FILE=$PATCH_DIR/033_drivers-mmc.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/drivers/mmc/host/sdhci-of-arasan.c                                                              linux-xlnx-2022.2/drivers/mmc/host/sdhci-of-arasan.c                                            >>$PATCH_FILE 

# drivers/mtd

PATCH_FILE=$PATCH_DIR/034_drivers-mtd.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/include/linux/mtd/cfi.h                                                                         linux-xlnx-2022.2/include/linux/mtd/cfi.h                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/include/linux/mtd/mtd.h                                                                         linux-xlnx-2022.2/include/linux/mtd/mtd.h                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/include/linux/mtd/onfi.h                                                                        linux-xlnx-2022.2/include/linux/mtd/onfi.h                                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/include/linux/mtd/rawnand.h                                                                     linux-xlnx-2022.2/include/linux/mtd/rawnand.h                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/include/linux/mtd/spi-nor.h                                                                     linux-xlnx-2022.2/include/linux/mtd/spi-nor.h                                                   >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/mtd/chips/cfi_probe.c                                                                   linux-xlnx-2022.2/drivers/mtd/chips/cfi_probe.c                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/mtd/nand/raw/arasan-nand-controller.c                                                   linux-xlnx-2022.2/drivers/mtd/nand/raw/arasan-nand-controller.c                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/mtd/nand/raw/nand_base.c                                                                linux-xlnx-2022.2/drivers/mtd/nand/raw/nand_base.c                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/mtd/nand/raw/nand_onfi.c                                                                linux-xlnx-2022.2/drivers/mtd/nand/raw/nand_onfi.c                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/mtd/spi-nor/core.c                                                                      linux-xlnx-2022.2/drivers/mtd/spi-nor/core.c                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/mtd/spi-nor/core.h                                                                      linux-xlnx-2022.2/drivers/mtd/spi-nor/core.h                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/mtd/spi-nor/gigadevice.c                                                                linux-xlnx-2022.2/drivers/mtd/spi-nor/gigadevice.c                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/mtd/spi-nor/issi.c                                                                      linux-xlnx-2022.2/drivers/mtd/spi-nor/issi.c                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/mtd/spi-nor/macronix.c                                                                  linux-xlnx-2022.2/drivers/mtd/spi-nor/macronix.c                                                >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/mtd/spi-nor/micron-st.c                                                                 linux-xlnx-2022.2/drivers/mtd/spi-nor/micron-st.c                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/mtd/spi-nor/sfdp.c                                                                      linux-xlnx-2022.2/drivers/mtd/spi-nor/sfdp.c                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/mtd/spi-nor/spansion.c                                                                  linux-xlnx-2022.2/drivers/mtd/spi-nor/spansion.c                                                >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/mtd/spi-nor/sst.c                                                                       linux-xlnx-2022.2/drivers/mtd/spi-nor/sst.c                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/mtd/spi-nor/swp.c                                                                       linux-xlnx-2022.2/drivers/mtd/spi-nor/swp.c                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/mtd/spi-nor/winbond.c                                                                   linux-xlnx-2022.2/drivers/mtd/spi-nor/winbond.c                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/mtd/tests/speedtest.c                                                                   linux-xlnx-2022.2/drivers/mtd/tests/speedtest.c                                                 >>$PATCH_FILE 

# drivers/net/can

PATCH_FILE=$PATCH_DIR/035_drivers-net-can.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/net/can/xilinx,can.yaml --label=/dev/null                     linux-xlnx-2022.2/Documentation/devicetree/bindings/net/can/xilinx,can.yaml                     >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/net/can/xilinx_can.c                                                                    linux-xlnx-2022.2/drivers/net/can/xilinx_can.c                                                  >>$PATCH_FILE 

# drivers/net/ethernet

PATCH_FILE=$PATCH_DIR/036_drivers-net-ethernet.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/net/cdns,macb.yaml --label=/dev/null                          linux-xlnx-2022.2/Documentation/devicetree/bindings/net/cdns,macb.yaml                          >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/net/xilinx_axienet.txt                                        linux-xlnx-2022.2/Documentation/devicetree/bindings/net/xilinx_axienet.txt                      >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/net/xlnx,emaclite.yaml --label=/dev/null                      linux-xlnx-2022.2/Documentation/devicetree/bindings/net/xlnx,emaclite.yaml                      >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/net/ethernet/cadence/macb.h                                                             linux-xlnx-2022.2/drivers/net/ethernet/cadence/macb.h                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/net/ethernet/cadence/macb_main.c                                                        linux-xlnx-2022.2/drivers/net/ethernet/cadence/macb_main.c                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/net/ethernet/cadence/macb_ptp.c                                                         linux-xlnx-2022.2/drivers/net/ethernet/cadence/macb_ptp.c                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/net/ethernet/xilinx/Kconfig                                                             linux-xlnx-2022.2/drivers/net/ethernet/xilinx/Kconfig                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/net/ethernet/xilinx/Makefile                                                            linux-xlnx-2022.2/drivers/net/ethernet/xilinx/Makefile                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/net/ethernet/xilinx/xilinx_axienet.h                                                    linux-xlnx-2022.2/drivers/net/ethernet/xilinx/xilinx_axienet.h                                  >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/net/ethernet/xilinx/xilinx_axienet_dma.c --label=/dev/null                              linux-xlnx-2022.2/drivers/net/ethernet/xilinx/xilinx_axienet_dma.c                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/net/ethernet/xilinx/xilinx_axienet_main.c                                               linux-xlnx-2022.2/drivers/net/ethernet/xilinx/xilinx_axienet_main.c                             >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/net/ethernet/xilinx/xilinx_axienet_mcdma.c --label=/dev/null                            linux-xlnx-2022.2/drivers/net/ethernet/xilinx/xilinx_axienet_mcdma.c                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c                                               linux-xlnx-2022.2/drivers/net/ethernet/xilinx/xilinx_axienet_mdio.c                             >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/net/ethernet/xilinx/xilinx_emaclite.c                                                   linux-xlnx-2022.2/drivers/net/ethernet/xilinx/xilinx_emaclite.c                                 >>$PATCH_FILE 

# drivers/net/phy

PATCH_FILE=$PATCH_DIR/037_drivers-net-phy.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt                                      linux-xlnx-2022.2/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt                    >>$PATCH_FILE
diff -urN linux-5.15.36/Documentation/devicetree/bindings/net/xilinx-phy.txt --label=/dev/null                          linux-xlnx-2022.2/Documentation/devicetree/bindings/net/xilinx-phy.txt                          >>$PATCH_FILE 

diff -urN linux-5.15.36/include/dt-bindings/net/mscc-phy-vsc8531.h                                                      linux-xlnx-2022.2/include/dt-bindings/net/mscc-phy-vsc8531.h                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/include/linux/xilinx_phy.h --label=/dev/null                                                    linux-xlnx-2022.2/include/linux/xilinx_phy.h                                                    >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/net/phy/Kconfig                                                                         linux-xlnx-2022.2/drivers/net/phy/Kconfig                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/net/phy/Makefile                                                                        linux-xlnx-2022.2/drivers/net/phy/Makefile                                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/net/phy/dp83867.c                                                                       linux-xlnx-2022.2/drivers/net/phy/dp83867.c                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/net/phy/mscc/mscc.h                                                                     linux-xlnx-2022.2/drivers/net/phy/mscc/mscc.h                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/net/phy/mscc/mscc_main.c                                                                linux-xlnx-2022.2/drivers/net/phy/mscc/mscc_main.c                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/net/phy/xilinx_phy.c --label=/dev/null                                                  linux-xlnx-2022.2/drivers/net/phy/xilinx_phy.c                                                  >>$PATCH_FILE 

# drivers/nvmem

PATCH_FILE=$PATCH_DIR/038_drivers-nvmem.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/nvmem/xlnx,versal-sec-cfg.yaml --label=/dev/null              linux-xlnx-2022.2/Documentation/devicetree/bindings/nvmem/xlnx,versal-sec-cfg.yaml              >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.txt                                   linux-xlnx-2022.2/Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.txt                 >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/nvmem/Kconfig                                                                           linux-xlnx-2022.2/drivers/nvmem/Kconfig                                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/nvmem/Makefile                                                                          linux-xlnx-2022.2/drivers/nvmem/Makefile                                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/nvmem/xlnx_secure_config.c --label=/dev/null                                            linux-xlnx-2022.2/drivers/nvmem/xlnx_secure_config.c                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/nvmem/zynqmp_nvmem.c                                                                    linux-xlnx-2022.2/drivers/nvmem/zynqmp_nvmem.c                                                  >>$PATCH_FILE 

# drivers/of

PATCH_FILE=$PATCH_DIR/039_drivers-of.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/configfs-overlays.txt --label=/dev/null                                linux-xlnx-2022.2/Documentation/devicetree/configfs-overlays.txt                                >>$PATCH_FILE 

diff -urN linux-5.15.36/include/linux/of_irq.h                                                                          linux-xlnx-2022.2/include/linux/of_irq.h                                                        >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/of/Kconfig                                                                              linux-xlnx-2022.2/drivers/of/Kconfig                                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/of/Makefile                                                                             linux-xlnx-2022.2/drivers/of/Makefile                                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/of/configfs.c --label=/dev/null                                                         linux-xlnx-2022.2/drivers/of/configfs.c                                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/of/overlay.c                                                                            linux-xlnx-2022.2/drivers/of/overlay.c                                                          >>$PATCH_FILE 

# drivers/pci

PATCH_FILE=$PATCH_DIR/040_drivers-pci.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml                                    linux-xlnx-2022.2/Documentation/devicetree/bindings/pci/xilinx-versal-cpm.yaml                  >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/pci/xilinx-xdma-pl-pcie.txt --label=/dev/null                 linux-xlnx-2022.2/Documentation/devicetree/bindings/pci/xilinx-xdma-pl-pcie.txt                 >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/pci/controller/Kconfig                                                                  linux-xlnx-2022.2/drivers/pci/controller/Kconfig                                                >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/pci/controller/Makefile                                                                 linux-xlnx-2022.2/drivers/pci/controller/Makefile                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/pci/controller/pcie-xdma-pl.c --label=/dev/null                                         linux-xlnx-2022.2/drivers/pci/controller/pcie-xdma-pl.c                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/pci/controller/pcie-xilinx-cpm.c                                                        linux-xlnx-2022.2/drivers/pci/controller/pcie-xilinx-cpm.c                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/pci/controller/pcie-xilinx-nwl.c                                                        linux-xlnx-2022.2/drivers/pci/controller/pcie-xilinx-nwl.c                                      >>$PATCH_FILE 

# drivers/phy

PATCH_FILE=$PATCH_DIR/041_drivers-phy.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/phy/xlnx,gt-quad-base.yaml --label=/dev/null                  linux-xlnx-2022.2/Documentation/devicetree/bindings/phy/xlnx,gt-quad-base.yaml                  >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/phy/xlnx,v-hmdi-phy1.yaml --label=/dev/null                   linux-xlnx-2022.2/Documentation/devicetree/bindings/phy/xlnx,v-hmdi-phy1.yaml                   >>$PATCH_FILE 

diff -urN linux-5.15.36/include/linux/phy/phy-hdmi.h --label=/dev/null                                                  linux-xlnx-2022.2/include/linux/phy/phy-hdmi.h                                                  >>$PATCH_FILE 
diff -urN linux-5.15.36/include/linux/phy/phy.h                                                                         linux-xlnx-2022.2/include/linux/phy/phy.h                                                       >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/phy/xilinx/Kconfig                                                                      linux-xlnx-2022.2/drivers/phy/xilinx/Kconfig                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/phy/xilinx/Makefile                                                                     linux-xlnx-2022.2/drivers/phy/xilinx/Makefile                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/phy/xilinx/xhdmiphy.c --label=/dev/null                                                 linux-xlnx-2022.2/drivers/phy/xilinx/xhdmiphy.c                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/phy/xilinx/xhdmiphy.h --label=/dev/null                                                 linux-xlnx-2022.2/drivers/phy/xilinx/xhdmiphy.h                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/phy/xilinx/xhdmiphy_core.c --label=/dev/null                                            linux-xlnx-2022.2/drivers/phy/xilinx/xhdmiphy_core.c                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/phy/xilinx/xhdmiphy_gt_helper.c --label=/dev/null                                       linux-xlnx-2022.2/drivers/phy/xilinx/xhdmiphy_gt_helper.c                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/phy/xilinx/xhdmiphy_mmcm.c --label=/dev/null                                            linux-xlnx-2022.2/drivers/phy/xilinx/xhdmiphy_mmcm.c                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/phy/xilinx/xhdmiphy_modules.c --label=/dev/null                                         linux-xlnx-2022.2/drivers/phy/xilinx/xhdmiphy_modules.c                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/phy/xilinx/xilinx_dpgtquadphy.c --label=/dev/null                                       linux-xlnx-2022.2/drivers/phy/xilinx/xilinx_dpgtquadphy.c                                       >>$PATCH_FILE 

# drivers/pinctrl

PATCH_FILE=$PATCH_DIR/042_drivers-pinctrl.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/pinctrl/xlnx,zynqmp-pinctrl.yaml                              linux-xlnx-2022.2/Documentation/devicetree/bindings/pinctrl/xlnx,zynqmp-pinctrl.yaml            >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/pinctrl/pinctrl-zynq.c                                                                  linux-xlnx-2022.2/drivers/pinctrl/pinctrl-zynq.c                                                >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/pinctrl/pinctrl-zynqmp.c                                                                linux-xlnx-2022.2/drivers/pinctrl/pinctrl-zynqmp.c                                              >>$PATCH_FILE 

# drivers/power

PATCH_FILE=$PATCH_DIR/043_drivers-power.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/include/dt-bindings/power/xlnx-versal-net-power.h --label=/dev/null                             linux-xlnx-2022.2/include/dt-bindings/power/xlnx-versal-net-power.h                             >>$PATCH_FILE 
diff -urN linux-5.15.36/include/dt-bindings/power/xlnx-versal-power.h --label=/dev/null                                 linux-xlnx-2022.2/include/dt-bindings/power/xlnx-versal-power.h                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/include/dt-bindings/power/xlnx-versal-regnode.h --label=/dev/null                               linux-xlnx-2022.2/include/dt-bindings/power/xlnx-versal-regnode.h                               >>$PATCH_FILE 
diff -urN linux-5.15.36/include/dt-bindings/power/xlnx-zynqmp-power.h                                                   linux-xlnx-2022.2/include/dt-bindings/power/xlnx-zynqmp-power.h                                 >>$PATCH_FILE 

# drivers/ptp

PATCH_FILE=$PATCH_DIR/044_drivers-ptp.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/ptp/ptp-xilinx.yaml --label=/dev/null                         linux-xlnx-2022.2/Documentation/devicetree/bindings/ptp/ptp-xilinx.yaml                         >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/ptp/Kconfig                                                                             linux-xlnx-2022.2/drivers/ptp/Kconfig                                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/ptp/Makefile                                                                            linux-xlnx-2022.2/drivers/ptp/Makefile                                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/ptp/ptp_xilinx.c --label=/dev/null                                                      linux-xlnx-2022.2/drivers/ptp/ptp_xilinx.c                                                      >>$PATCH_FILE 

# drivers/pwm

PATCH_FILE=$PATCH_DIR/045_drivers-pwm.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/drivers/pwm/Kconfig                                                                             linux-xlnx-2022.2/drivers/pwm/Kconfig                                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/pwm/Makefile                                                                            linux-xlnx-2022.2/drivers/pwm/Makefile                                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/pwm/pwm-cadence.c --label=/dev/null                                                     linux-xlnx-2022.2/drivers/pwm/pwm-cadence.c                                                     >>$PATCH_FILE 

# drivers/remoteproc

PATCH_FILE=$PATCH_DIR/046_drivers-remoteproc.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml --label=/dev/null linux-xlnx-2022.2/Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/remoteproc/zynq_remoteproc.txt --label=/dev/null              linux-xlnx-2022.2/Documentation/devicetree/bindings/remoteproc/zynq_remoteproc.txt              >>$PATCH_FILE 

diff -urN linux-5.15.36/include/linux/remoteproc.h                                                                      linux-xlnx-2022.2/include/linux/remoteproc.h                                                    >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/remoteproc/Kconfig                                                                      linux-xlnx-2022.2/drivers/remoteproc/Kconfig                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/remoteproc/Makefile                                                                     linux-xlnx-2022.2/drivers/remoteproc/Makefile                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/remoteproc/remoteproc_internal.h                                                        linux-xlnx-2022.2/drivers/remoteproc/remoteproc_internal.h                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/remoteproc/remoteproc_sysfs.c                                                           linux-xlnx-2022.2/drivers/remoteproc/remoteproc_sysfs.c                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/remoteproc/zynq_remoteproc.c --label=/dev/null                                          linux-xlnx-2022.2/drivers/remoteproc/zynq_remoteproc.c                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/remoteproc/zynqmp_r5_remoteproc.c --label=/dev/null                                     linux-xlnx-2022.2/drivers/remoteproc/zynqmp_r5_remoteproc.c                                     >>$PATCH_FILE 

# drivers/reset

PATCH_FILE=$PATCH_DIR/047_drivers-reset.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/reset/xlnx,zynqmp-reset.txt                                   linux-xlnx-2022.2/Documentation/devicetree/bindings/reset/xlnx,zynqmp-reset.txt                 >>$PATCH_FILE 
diff -urN linux-5.15.36/include/dt-bindings/reset/xlnx-versal-net-resets.h --label=/dev/null                            linux-xlnx-2022.2/include/dt-bindings/reset/xlnx-versal-net-resets.h                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/reset/reset-zynqmp.c                                                                    linux-xlnx-2022.2/drivers/reset/reset-zynqmp.c                                                  >>$PATCH_FILE 

# drivers/rtc

PATCH_FILE=$PATCH_DIR/048_drivers-rtc.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/drivers/rtc/rtc-zynqmp.c                                                                        linux-xlnx-2022.2/drivers/rtc/rtc-zynqmp.c                                                      >>$PATCH_FILE 

# drivers/soc/xilinx

PATCH_FILE=$PATCH_DIR/049_drivers-soc-xilinx.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/soc/xilinx/xlnx,ai-engine-npi.txt --label=/dev/null           linux-xlnx-2022.2/Documentation/devicetree/bindings/soc/xilinx/xlnx,ai-engine-npi.txt           >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/soc/xilinx/xlnx,ai-engine.yaml --label=/dev/null              linux-xlnx-2022.2/Documentation/devicetree/bindings/soc/xilinx/xlnx,ai-engine.yaml              >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/soc/xilinx/xlnx,ai_engine.txt --label=/dev/null               linux-xlnx-2022.2/Documentation/devicetree/bindings/soc/xilinx/xlnx,ai_engine.txt               >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/soc/xilinx/Kconfig                                                                      linux-xlnx-2022.2/drivers/soc/xilinx/Kconfig                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/soc/xilinx/Makefile                                                                     linux-xlnx-2022.2/drivers/soc/xilinx/Makefile                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/soc/xilinx/xlnx_event_manager.c --label=/dev/null                                       linux-xlnx-2022.2/drivers/soc/xilinx/xlnx_event_manager.c                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/soc/xilinx/zynqmp_pm_domains.c                                                          linux-xlnx-2022.2/drivers/soc/xilinx/zynqmp_pm_domains.c                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/soc/xilinx/zynqmp_power.c                                                               linux-xlnx-2022.2/drivers/soc/xilinx/zynqmp_power.c                                             >>$PATCH_FILE 

# drivers/spi

PATCH_FILE=$PATCH_DIR/050_drivers-spi.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml                                        linux-xlnx-2022.2/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml                      >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/spi/spi-zynqmp-qspi.yaml                                      linux-xlnx-2022.2/Documentation/devicetree/bindings/spi/spi-zynqmp-qspi.yaml                    >>$PATCH_FILE 

diff -urN linux-5.15.36/include/linux/spi/spi-mem.h                                                                     linux-xlnx-2022.2/include/linux/spi/spi-mem.h                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/include/linux/spi/spi.h                                                                         linux-xlnx-2022.2/include/linux/spi/spi.h                                                       >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/spi/Kconfig                                                                             linux-xlnx-2022.2/drivers/spi/Kconfig                                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/spi/spi-cadence-quadspi.c                                                               linux-xlnx-2022.2/drivers/spi/spi-cadence-quadspi.c                                             >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/spi/spi-cadence.c                                                                       linux-xlnx-2022.2/drivers/spi/spi-cadence.c                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/spi/spi-mem.c                                                                           linux-xlnx-2022.2/drivers/spi/spi-mem.c                                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/spi/spi-xilinx.c                                                                        linux-xlnx-2022.2/drivers/spi/spi-xilinx.c                                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/spi/spi-zynq-qspi.c                                                                     linux-xlnx-2022.2/drivers/spi/spi-zynq-qspi.c                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/spi/spi-zynqmp-gqspi.c                                                                  linux-xlnx-2022.2/drivers/spi/spi-zynqmp-gqspi.c                                                >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/spi/spi.c                                                                               linux-xlnx-2022.2/drivers/spi/spi.c                                                             >>$PATCH_FILE 

# drivers/staging

PATCH_FILE=$PATCH_DIR/051_drivers-staging.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/staging/net --label=/dev/null                                 linux-xlnx-2022.2/Documentation/devicetree/bindings/staging/net                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/misc/xlnx,fclk.txt --label=/dev/null                          linux-xlnx-2022.2/Documentation/devicetree/bindings/misc/xlnx,fclk.txt                          >>$PATCH_FILE

diff -urN linux-5.15.36/include/uapi/linux/xlnxsync.h --label=/dev/null                                                 linux-xlnx-2022.2/include/uapi/linux/xlnxsync.h                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/include/uapi/linux/xlnx_mpg2tsmux_interface.h --label=/dev/null                                 linux-xlnx-2022.2/include/uapi/linux/xlnx_mpg2tsmux_interface.h                                 >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/staging/Kconfig                                                                         linux-xlnx-2022.2/drivers/staging/Kconfig                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/staging/Makefile                                                                        linux-xlnx-2022.2/drivers/staging/Makefile                                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/staging/apf --label=/dev/null                                                           linux-xlnx-2022.2/drivers/staging/apf                                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/staging/fclk --label=/dev/null                                                          linux-xlnx-2022.2/drivers/staging/fclk                                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/staging/uartlite-rs485 --label=/dev/null                                                linux-xlnx-2022.2/drivers/staging/uartlite-rs485                                                >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/staging/xilinx-tsn --label=/dev/null                                                    linux-xlnx-2022.2/drivers/staging/xilinx-tsn                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/staging/xlnx_hdcp1x --label=/dev/null                                                   linux-xlnx-2022.2/drivers/staging/xlnx_hdcp1x                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/staging/xlnx_tsmux --label=/dev/null                                                    linux-xlnx-2022.2/drivers/staging/xlnx_tsmux                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/staging/xlnxsync --label=/dev/null                                                      linux-xlnx-2022.2/drivers/staging/xlnxsync                                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/staging/xroeframer --label=/dev/null                                                    linux-xlnx-2022.2/drivers/staging/xroeframer                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/staging/xroetrafficgen --label=/dev/null                                                linux-xlnx-2022.2/drivers/staging/xroetrafficgen                                                >>$PATCH_FILE 

# drivers/tty/serial

PATCH_FILE=$PATCH_DIR/052_drivers-tty-serial.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/serial/pl011.yaml                                             linux-xlnx-2022.2/Documentation/devicetree/bindings/serial/pl011.yaml                           >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/serial/xlnx,opb-uartlite.yaml --label=/dev/null               linux-xlnx-2022.2/Documentation/devicetree/bindings/serial/xlnx,opb-uartlite.yaml               >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/tty/serial/Kconfig                                                                      linux-xlnx-2022.2/drivers/tty/serial/Kconfig                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/tty/serial/amba-pl011.c                                                                 linux-xlnx-2022.2/drivers/tty/serial/amba-pl011.c                                               >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/tty/serial/uartlite.c                                                                   linux-xlnx-2022.2/drivers/tty/serial/uartlite.c                                                 >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/tty/serial/xilinx_uartps.c                                                              linux-xlnx-2022.2/drivers/tty/serial/xilinx_uartps.c                                            >>$PATCH_FILE 

# drivers/uio

PATCH_FILE=$PATCH_DIR/053_drivers-uio.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/include/uapi/linux/uio --label=/dev/null                                                        linux-xlnx-2022.2/include/uapi/linux/uio                                                        >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/uio/Kconfig                                                                             linux-xlnx-2022.2/drivers/uio/Kconfig                                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/uio/Makefile                                                                            linux-xlnx-2022.2/drivers/uio/Makefile                                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/uio/uio_core.c --label=/dev/null                                                        linux-xlnx-2022.2/drivers/uio/uio_core.c                                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/uio/uio_dmabuf.c --label=/dev/null                                                      linux-xlnx-2022.2/drivers/uio/uio_dmabuf.c                                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/uio/uio_dmabuf.h --label=/dev/null                                                      linux-xlnx-2022.2/drivers/uio/uio_dmabuf.h                                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/uio/uio_xilinx_ai_engine.c --label=/dev/null                                            linux-xlnx-2022.2/drivers/uio/uio_xilinx_ai_engine.c                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/uio/uio_xilinx_apm.c --label=/dev/null                                                  linux-xlnx-2022.2/drivers/uio/uio_xilinx_apm.c                                                  >>$PATCH_FILE 

# drivers/usb/chipidea

PATCH_FILE=$PATCH_DIR/054_drivers-usb-chipidea.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/include/linux/usb/chipidea.h                                                                    linux-xlnx-2022.2/include/linux/usb/chipidea.h                                                  >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/usb/chipidea/ci_hdrc_usb2.c                                                             linux-xlnx-2022.2/drivers/usb/chipidea/ci_hdrc_usb2.c                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/chipidea/core.c                                                                     linux-xlnx-2022.2/drivers/usb/chipidea/core.c                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/chipidea/host.c                                                                     linux-xlnx-2022.2/drivers/usb/chipidea/host.c                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/chipidea/otg.c                                                                      linux-xlnx-2022.2/drivers/usb/chipidea/otg.c                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/chipidea/otg_fsm.c                                                                  linux-xlnx-2022.2/drivers/usb/chipidea/otg_fsm.c                                                >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/chipidea/udc.c                                                                      linux-xlnx-2022.2/drivers/usb/chipidea/udc.c                                                    >>$PATCH_FILE 

# drivers/usb/dwc3

PATCH_FILE=$PATCH_DIR/055_drivers-usb-dwc3.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml --label=/dev/null                        linux-xlnx-2022.2/Documentation/devicetree/bindings/usb/dwc3-xilinx.yaml                        >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/usb/snps,dwc3.yaml                                            linux-xlnx-2022.2/Documentation/devicetree/bindings/usb/snps,dwc3.yaml                          >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/usb/dwc3/Kconfig                                                                        linux-xlnx-2022.2/drivers/usb/dwc3/Kconfig                                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/dwc3/Makefile                                                                       linux-xlnx-2022.2/drivers/usb/dwc3/Makefile                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/dwc3/core.c                                                                         linux-xlnx-2022.2/drivers/usb/dwc3/core.c                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/dwc3/core.h                                                                         linux-xlnx-2022.2/drivers/usb/dwc3/core.h                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/dwc3/debugfs.c                                                                      linux-xlnx-2022.2/drivers/usb/dwc3/debugfs.c                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/dwc3/drd.c                                                                          linux-xlnx-2022.2/drivers/usb/dwc3/drd.c                                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/dwc3/dwc3-xilinx.c                                                                  linux-xlnx-2022.2/drivers/usb/dwc3/dwc3-xilinx.c                                                >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/dwc3/ep0.c                                                                          linux-xlnx-2022.2/drivers/usb/dwc3/ep0.c                                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/dwc3/gadget.c                                                                       linux-xlnx-2022.2/drivers/usb/dwc3/gadget.c                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/dwc3/gadget.h                                                                       linux-xlnx-2022.2/drivers/usb/dwc3/gadget.h                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/dwc3/gadget_hibernation.c --label=/dev/null                                         linux-xlnx-2022.2/drivers/usb/dwc3/gadget_hibernation.c                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/dwc3/host.c                                                                         linux-xlnx-2022.2/drivers/usb/dwc3/host.c                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/dwc3/otg.c --label=/dev/null                                                        linux-xlnx-2022.2/drivers/usb/dwc3/otg.c                                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/dwc3/otg.h --label=/dev/null                                                        linux-xlnx-2022.2/drivers/usb/dwc3/otg.h                                                        >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/dwc3/platform_data.h --label=/dev/null                                              linux-xlnx-2022.2/drivers/usb/dwc3/platform_data.h                                              >>$PATCH_FILE 

# drivers/usb/gadget

PATCH_FILE=$PATCH_DIR/056_drivers-usb-gadget.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/usb/udc-xilinx.txt                                            linux-xlnx-2022.2/Documentation/devicetree/bindings/usb/udc-xilinx.txt                          >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/usb/gadget/composite.c                                                                  linux-xlnx-2022.2/drivers/usb/gadget/composite.c                                                >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/gadget/function/f_tcm.c                                                             linux-xlnx-2022.2/drivers/usb/gadget/function/f_tcm.c                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/gadget/function/tcm.h                                                               linux-xlnx-2022.2/drivers/usb/gadget/function/tcm.h                                             >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/gadget/function/uvc_video.c                                                         linux-xlnx-2022.2/drivers/usb/gadget/function/uvc_video.c                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/gadget/legacy/webcam.c                                                              linux-xlnx-2022.2/drivers/usb/gadget/legacy/webcam.c                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/gadget/udc/udc-xilinx.c                                                             linux-xlnx-2022.2/drivers/usb/gadget/udc/udc-xilinx.c                                           >>$PATCH_FILE 

# drivers/usb/host

PATCH_FILE=$PATCH_DIR/057_drivers-usb-host.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/usb/ehci-xilinx.txt --label=/dev/null                         linux-xlnx-2022.2/Documentation/devicetree/bindings/usb/ehci-xilinx.txt                         >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/usb/host/ehci-xilinx-of.c                                                               linux-xlnx-2022.2/drivers/usb/host/ehci-xilinx-of.c                                             >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/host/xhci-hub.c                                                                     linux-xlnx-2022.2/drivers/usb/host/xhci-hub.c                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/host/xhci-mem.c                                                                     linux-xlnx-2022.2/drivers/usb/host/xhci-mem.c                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/host/xhci-plat.c                                                                    linux-xlnx-2022.2/drivers/usb/host/xhci-plat.c                                                  >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/host/xhci-ring.c                                                                    linux-xlnx-2022.2/drivers/usb/host/xhci-ring.c                                                  >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/host/xhci.c                                                                         linux-xlnx-2022.2/drivers/usb/host/xhci.c                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/host/xhci.h                                                                         linux-xlnx-2022.2/drivers/usb/host/xhci.h                                                       >>$PATCH_FILE 

# drivers/usb/misc

PATCH_FILE=$PATCH_DIR/058_drivers-usb-misc.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/usb/microchip,usb2244.yaml --label=/dev/null                  linux-xlnx-2022.2/Documentation/devicetree/bindings/usb/microchip,usb2244.yaml                  >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/usb/microchip,usb5744.yaml --label=/dev/null                  linux-xlnx-2022.2/Documentation/devicetree/bindings/usb/microchip,usb5744.yaml                  >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/usb/misc/Kconfig                                                                        linux-xlnx-2022.2/drivers/usb/misc/Kconfig                                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/misc/Makefile                                                                       linux-xlnx-2022.2/drivers/usb/misc/Makefile                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/misc/usb2244.c --label=/dev/null                                                    linux-xlnx-2022.2/drivers/usb/misc/usb2244.c                                                    >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/misc/usb5744.c --label=/dev/null                                                    linux-xlnx-2022.2/drivers/usb/misc/usb5744.c                                                    >>$PATCH_FILE 

# drivers/usb/phy

PATCH_FILE=$PATCH_DIR/059_drivers-usb-phy.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/drivers/usb/phy/Kconfig                                                                         linux-xlnx-2022.2/drivers/usb/phy/Kconfig                                                       >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/phy/phy-ulpi.c                                                                      linux-xlnx-2022.2/drivers/usb/phy/phy-ulpi.c                                                    >>$PATCH_FILE 

# drivers/usb/strage

PATCH_FILE=$PATCH_DIR/060_drivers-usb-strage.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/drivers/usb/storage/uas.c                                                                       linux-xlnx-2022.2/drivers/usb/storage/uas.c                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/usb/storage/unusual_uas.h                                                               linux-xlnx-2022.2/drivers/usb/storage/unusual_uas.h                                             >>$PATCH_FILE 

# drivers/virtio

PATCH_FILE=$PATCH_DIR/061_drivers-virtio.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/drivers/virtio/virtio_ring.c                                                                    linux-xlnx-2022.2/drivers/virtio/virtio_ring.c                                                  >>$PATCH_FILE 

# drivers/watchdog

PATCH_FILE=$PATCH_DIR/062_drivers-watchdog.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/watchdog/xlnx,xps-timebase-wdt.yaml --label=/dev/null         linux-xlnx-2022.2/Documentation/devicetree/bindings/watchdog/xlnx,xps-timebase-wdt.yaml         >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/watchdog/of_xilinx_wdt.c                                                                linux-xlnx-2022.2/drivers/watchdog/of_xilinx_wdt.c                                              >>$PATCH_FILE 

# drivers/xen

PATCH_FILE=$PATCH_DIR/063_drivers-xen.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/include/xen/pvcalls.h --label=/dev/null                                                         linux-xlnx-2022.2/include/xen/pvcalls.h                                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/include/xen/xen.h                                                                               linux-xlnx-2022.2/include/xen/xen.h                                                             >>$PATCH_FILE 

diff -urN linux-5.15.36/drivers/xen/Kconfig                                                                             linux-xlnx-2022.2/drivers/xen/Kconfig                                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/xen/Makefile                                                                            linux-xlnx-2022.2/drivers/xen/Makefile                                                          >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/xen/pvcalls.c --label=/dev/null                                                         linux-xlnx-2022.2/drivers/xen/pvcalls.c                                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/drivers/xen/xenbus/xenbus_probe.c                                                               linux-xlnx-2022.2/drivers/xen/xenbus/xenbus_probe.c                                             >>$PATCH_FILE 

# sound/soc

PATCH_FILE=$PATCH_DIR/064_sound-soc.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/sound/xlnx,audio-formatter.txt                                linux-xlnx-2022.2/Documentation/devicetree/bindings/sound/xlnx,audio-formatter.txt              >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/sound/xlnx,dp-snd-card.txt --label=/dev/null                  linux-xlnx-2022.2/Documentation/devicetree/bindings/sound/xlnx,dp-snd-card.txt                  >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/sound/xlnx,dp-snd-codec.txt --label=/dev/null                 linux-xlnx-2022.2/Documentation/devicetree/bindings/sound/xlnx,dp-snd-codec.txt                 >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/sound/xlnx,dp-snd-pcm.txt --label=/dev/null                   linux-xlnx-2022.2/Documentation/devicetree/bindings/sound/xlnx,dp-snd-pcm.txt                   >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/sound/xlnx,i2s.txt                                            linux-xlnx-2022.2/Documentation/devicetree/bindings/sound/xlnx,i2s.txt                          >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/sound/xlnx,spdif.txt                                          linux-xlnx-2022.2/Documentation/devicetree/bindings/sound/xlnx,spdif.txt                        >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/sound/xlnx,v-uhdsdi-audio.txt --label=/dev/null               linux-xlnx-2022.2/Documentation/devicetree/bindings/sound/xlnx,v-uhdsdi-audio.txt               >>$PATCH_FILE 

diff -urN linux-5.15.36/sound/soc/xilinx/Kconfig                                                                        linux-xlnx-2022.2/sound/soc/xilinx/Kconfig                                                      >>$PATCH_FILE 
diff -urN linux-5.15.36/sound/soc/xilinx/Makefile                                                                       linux-xlnx-2022.2/sound/soc/xilinx/Makefile                                                     >>$PATCH_FILE 
diff -urN linux-5.15.36/sound/soc/xilinx/xilinx-dp-card.c --label=/dev/null                                             linux-xlnx-2022.2/sound/soc/xilinx/xilinx-dp-card.c                                             >>$PATCH_FILE 
diff -urN linux-5.15.36/sound/soc/xilinx/xilinx-dp-codec.c --label=/dev/null                                            linux-xlnx-2022.2/sound/soc/xilinx/xilinx-dp-codec.c                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/sound/soc/xilinx/xilinx-dp-pcm.c --label=/dev/null                                              linux-xlnx-2022.2/sound/soc/xilinx/xilinx-dp-pcm.c                                              >>$PATCH_FILE 
diff -urN linux-5.15.36/sound/soc/xilinx/xlnx_formatter_pcm.c                                                           linux-xlnx-2022.2/sound/soc/xilinx/xlnx_formatter_pcm.c                                         >>$PATCH_FILE 
diff -urN linux-5.15.36/sound/soc/xilinx/xlnx_i2s.c                                                                     linux-xlnx-2022.2/sound/soc/xilinx/xlnx_i2s.c                                                   >>$PATCH_FILE 
diff -urN linux-5.15.36/sound/soc/xilinx/xlnx_pl_snd_card.c --label=/dev/null                                           linux-xlnx-2022.2/sound/soc/xilinx/xlnx_pl_snd_card.c                                           >>$PATCH_FILE 
diff -urN linux-5.15.36/sound/soc/xilinx/xlnx_sdi_audio.c --label=/dev/null                                             linux-xlnx-2022.2/sound/soc/xilinx/xlnx_sdi_audio.c                                             >>$PATCH_FILE 
diff -urN linux-5.15.36/sound/soc/xilinx/xlnx_snd_common.h --label=/dev/null                                            linux-xlnx-2022.2/sound/soc/xilinx/xlnx_snd_common.h                                            >>$PATCH_FILE 
diff -urN linux-5.15.36/sound/soc/xilinx/xlnx_spdif.c                                                                   linux-xlnx-2022.2/sound/soc/xilinx/xlnx_spdif.c                                                 >>$PATCH_FILE 

# kernel
# 
# PATCH_FILE=$PATCH_DIR/kernel.patch
# touch $PATCH_FILE
# 
# diff -urN linux-5.15.36/kernel/irq/irqdesc.c                                                                            linux-xlnx-2022.2/kernel/irq/irqdesc.c                                                          >>$PATCH_FILE 
# diff -urN linux-5.15.36/kernel/configs/debug.config --label=/dev/null                                                   linux-xlnx-2022.2/kernel/configs/debug.config                                                   >>$PATCH_FILE 


# net/ipv4
# 
# PATCH_FILE=$PATCH_DIR/net-ipv4.patch
# touch $PATCH_FILE
# 
# diff -urN linux-5.15.36/net/ipv4/af_inet.c                                                                              linux-xlnx-2022.2/net/ipv4/af_inet.c                                                            >>$PATCH_FILE 

# scripts
# 
# PATCH_FILE=$PATCH_DIR/scripts.patch
# touch $PATCH_FILE
# 
# diff -urN linux-5.15.36/scripts/checkpatch.pl                                                                           linux-xlnx-2022.2/scripts/checkpatch.pl                                                         >>$PATCH_FILE 

# samples/xilinx_apm
# 
# PATCH_FILE=$PATCH_DIR/samples-xilinx_apm.patch
# touch $PATCH_FILE
# 
# diff -urN linux-5.15.36/Documentation/devicetree/bindings/perf/xilinx-apm.yaml --label=/dev/null                        linux-xlnx-2022.2/Documentation/devicetree/bindings/perf/xilinx-apm.yaml                        >>$PATCH_FILE 
# diff -urN linux-5.15.36/samples/xilinx_apm --label=/dev/null                                                            linux-xlnx-2022.2/samples/xilinx_apm                                                            >>$PATCH_FILE 

# other-documents

PATCH_FILE=$PATCH_DIR/099_other-documents.patch
touch $PATCH_FILE

diff -urN linux-5.15.36/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml --label=/dev/null        linux-xlnx-2022.2/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.yaml        >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/perf/xlnx-flexnoc-pm.yaml --label=/dev/null                   linux-xlnx-2022.2/Documentation/devicetree/bindings/perf/xlnx-flexnoc-pm.yaml                   >>$PATCH_FILE 
diff -urN linux-5.15.36/Documentation/devicetree/bindings/xlnx,ctrl-fb.txt --label=/dev/null                            linux-xlnx-2022.2/Documentation/devicetree/bindings/xlnx,ctrl-fb.txt                            >>$PATCH_FILE 
diff -urN linux-5.15.36/MAINTAINERS                                                                                     linux-xlnx-2022.2/MAINTAINERS                                                                   >>$PATCH_FILE 
