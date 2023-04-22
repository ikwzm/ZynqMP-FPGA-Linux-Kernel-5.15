#!/bin/bash

CURRENT_DIR=`pwd`
KERNEL_VERSION=5.15.107
LOCAL_VERSION=zynqmp-fpga-generic
BUILD_VERSION=3

set -e
script_name=$0
verbose=0
help_run=0
dry_run=0
output_directory=""
target_list=""
error=0

do_help()
{
    echo "NAME"
    echo "    $script_name - ZynqMP-FPGA-Linux-Kernel Installer"
    echo ""
    echo "SYNOPSYS"
    echo "    $script_name [<options>] TARGET..."
    echo ""
    echo "DESCRIPTION"
    echo "    ZynqMP-FPGA-Linux-Kernel Installer"
    echo ""
    echo "TARGET"
    echo "    UltraZed-EG-IOCC"
    echo "    Ultra96         "
    echo "    Ultra96-V2      "
    echo "    Kv260           "
    echo ""
    echo "OPTIONS"
    echo "    -h, --help                  Run Help command"
    echo "    -n, --dry-run               Don't actually run any command"
    echo "    -v, --verbose               Turn on verbosity"
    echo "    -d, --directory     <args>  Target directory"
    echo "    -b, --build-version <args>  Build version (default=$BUILD_VERSION)"
    echo ""
}

run_command()
{
    if [ $dry_run -ne 0 ] || [ $verbose -ne 0 ]; then
	echo "$1"
    fi
    if [ $dry_run -eq 0 ]; then
	eval "$1"
    fi
}

if [ $# -eq 0 ]; then
    help_run=1
fi

while [ $# -gt 0 ]; do
    case "$1" in
	-h|--help)
	    help_run=1
	    shift
	    ;;
	-v|--verbose)
	    verbose=1
	    shift
	    ;;
	-n|--dry-run)
	    dry_run=1
	    shift
	    ;;
	-b|--build-version)
	    shift
	    BUILD_VERSION=$1
	    shift
	    ;;
	-d|--directory)
	    shift
	    output_directory=$1
	    shift
	    ;;
	Kv260|kv260)
	    target_list="$target_list Kv260"
	    shift
	    ;;
	Ultra96|ultra96)
	    target_list="$target_list Ultra96"
	    shift
	    ;;
	Ultra96v2|ultra96v2|Ultra96-v2)
	    target_list="$target_list Ultra96-v2"
	    shift
	    ;;
	UltraZed-EG-IOCC)
	    target_list="$target_list UltraZed-EG-IOCC"
	    shift
	    ;;
	*)
	    echo "Error: Not Support Target $1"
	    error=1
	    shift
	    ;;
    esac
done

if [ $help_run -ne 0 ] ; then
    do_help
    exit 0
fi

if [ -z $target_list ]; then
    echo "Error: Target not specified"
    error=1
fi

if [ -z $output_directory ]; then
    echo "Error: Target Directory is not specified"
    error=1
fi


KERNEL_RELEASE=$KERNEL_VERSION-$LOCAL_VERSION

if [ $verbose -ne 0 ]; then
    echo "KERNEL_RELEASE  = " $KERNEL_RELEASE
    echo "BUILD_VERSION   = " $BUILD_VERSION
    echo "TARGET          = " $target_list
    echo "TARGET_DIRECTRY = " $output_directory
fi

if [ ! -e $CURRENT_DIR/vmlinuz-$KERNEL_RELEASE-$BUILD_VERSION ]; then
    echo "Error: Not found vmlinuz-$KERNEL_RELEASE-$BUILD_VERSION in $CURRENT_DIR"
    error=1
fi

if [ ! -e $CURRENT_DIR/devicetrees/$KERNEL_RELEASE-$BUILD_VERSION ]; then
    echo "Error: Not found devicetrees/$KERNEL_RELEASE-$BUILD_VERSION in $CURRENT_DIR"
    error=1
fi

if [ $error -ne 0 ]; then
    exit 1
fi

run_command "install -d $output_directory"
run_command "gzip -d -c $CURRENT_DIR/vmlinuz-$KERNEL_RELEASE-$BUILD_VERSION > $output_directory/image-$KERNEL_RELEASE"

do_dtb_install()
{
    local dtb_source=""
    local dtb_target=""
    local dts_target=""
    case "$1" in
	UltraZed-EG-IOCC)
	    dtb_source=zynqmp-uz3eg-iocc.dtb
	    dtb_target=devicetree-$KERNEL_RELEASE-uz3eg-iocc.dtb
	    dts_target=devicetree-$KERNEL_RELEASE-uz3eg-iocc.dts
	    ;;
	Ultra96)
	    dtb_source=avnet-ultra96-rev1.dtb
	    dtb_target=devicetree-$KERNEL_RELEASE-ultra96.dtb
	    dts_target=devicetree-$KERNEL_RELEASE-ultra96.dts
	    ;;
	Ultra96-V2)
	    dtb_source=avnet-ultra96v2-rev1.dtb
	    dtb_target=devicetree-$KERNEL_RELEASE-ultra96v2.dtb
	    dts_target=devicetree-$KERNEL_RELEASE-ultra96v2.dts
	    ;;
	Kv260)
	  # dtb_source=zynqmp-smk-k26-revA-sck-kv-g-revB.dtb
	    dtb_source=zynqmp-kv260-revB.dtb
	    dtb_target=devicetree-$KERNEL_RELEASE-kv260-revB.dtb
	    dts_target=devicetree-$KERNEL_RELEASE-kv260-revB.dts
	    ;;
    esac
    run_command "cp $CURRENT_DIR/devicetrees/$KERNEL_RELEASE-$BUILD_VERSION/$dtb_source $output_directory/$dtb_target"
    run_command "dtc -I dtb -O dts --symbols -o $output_directory/$dts_target $output_directory/$dtb_target"
    
}

set $target_list
while [ $# -gt 0 ]; do
    do_dtb_install $1
    shift
done

