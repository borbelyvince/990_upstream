#!/bin/bash

SOURCE_DIR=$PWD

MAKE_ARGS="
ARCH=arm64 \
CROSS_COMPILE=$SOURCE_DIR/toolchain/gcc/bin/aarch64-linux-androidkernel- \
CLANG_TRIPLE=$SOURCE_DIR/toolchain/gcc/bin/aarch64-linux-gnu- \
CC=$SOURCE_DIR/toolchain/clang/bin/clang \
PLATFORM_VERSION=13 \
O=out
"
make $MAKE_ARGS exynos9830-x1slte_defconfig
make $MAKE_ARGS $@
