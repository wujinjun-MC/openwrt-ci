#!/bin/bash
set -euo pipefail

echo "03-compile.sh start"

export SHARED_ENV=./.env
. "$SHARED_ENV"

cd "$OPENWRT_PATH"

# { Download DL Package(下载DL软件包) }cd "$OPENWRT_PATH"
make defconfig
if ! [[ -f "$OPENWRT_PATH/flags-downloaded-packages" ]]
then
    make download -j8
    find dl -size -1024c -exec ls -l {} \;
    find dl -size -1024c -exec rm -f {} \;
    touch "$OPENWRT_PATH/flags-downloaded-packages"
fi

# { Compile Firmware (多线程尝试), Compile Firmware Single Thread with Verbosity (单线程详细模式) }
cd "$OPENWRT_PATH"
echo -e "$(nproc) thread compile"
# 记录开始编译时的时间戳
export TIMESTAMP_START_COMPILE=$(printf "%(%s)T")

echo >> "$OPENWRT_PATH/build-log.log"
echo "-------- Start building - $(date +"%Y-%m-%d %H:%M:%S") --------" >> "$OPENWRT_PATH/build-log.log"
echo >> "$OPENWRT_PATH/build-log.log"
# 多线程编译 或 单线程编译
if [[ -v force_single_thread ]]
then
    echo "!! Force Single Thread Mode" | tee -a "$OPENWRT_PATH/build-log.log"
    make -j1 V=s 2>&1 | tee -a "$OPENWRT_PATH/build-log.log"
else
    make -j$(nproc) 2>&1 | tee -a "$OPENWRT_PATH/build-log.log"
fi
echo >> "$OPENWRT_PATH/build-log.log"
echo "-------- Stop building - $(date +"%Y-%m-%d %H:%M:%S") --------" >> "$OPENWRT_PATH/build-log.log"
echo >> "$OPENWRT_PATH/build-log.log"

# 编译结果位于 bin/targets
ls bin/targets

echo "03-compile.sh success"
