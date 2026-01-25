#!/bin/bash
set -euo pipefail

echo "03-compile.sh start"

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

echo >> "$OPENWRT_PATH/build-log.log"
echo "-------- Start building - $(date +"%Y-%m-%d %H:%M:%S") --------" >> "$OPENWRT_PATH/build-log.log"
echo >> "$OPENWRT_PATH/build-log.log"
# 多线程编译 或 单线程编译
if [[ -v force_single_thread ]]
then
    make -j1 V=s | tee -a "$OPENWRT_PATH/build-log.log"
else
    make -j$(nproc) || make -j1 V=s | tee -a "$OPENWRT_PATH/build-log.log"
fi
echo >> "$OPENWRT_PATH/build-log.log"
echo "-------- Stop building - $(date +"%Y-%m-%d %H:%M:%S") --------" >> "$OPENWRT_PATH/build-log.log"
echo >> "$OPENWRT_PATH/build-log.log"

# 编译结果位于 bin/targets
ls bin/targets

echo "03-compile.sh success"
