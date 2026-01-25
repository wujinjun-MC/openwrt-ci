#!/bin/bash
set -euo pipefail

cd builder
export GITHUB_WORKSPACE="$(pwd)"
cd openwrt
export OPENWRT_PATH="$(pwd)"

# { Download DL Package(下载DL软件包) }
cd "$OPENWRT_PATH"
make defconfig
make download -j8
find dl -size -1024c -exec ls -l {} \;
find dl -size -1024c -exec rm -f {} \;

# { Compile Firmware (多线程尝试), Compile Firmware Single Thread with Verbosity (单线程详细模式) }
cd $OPENWRT_PATH
echo -e "$(nproc) thread compile"
# 记录开始编译时的时间戳
export TIMESTAMP_START_COMPILE=$(printf "%(%s)T")
# 第一次尝试：多线程编译
make -j$(nproc) || make -j1 V=s | tee "$OPENWRT_PATH/build-single-thread.log"

# 编译结果位于 bin/targets
ls bin/targets
