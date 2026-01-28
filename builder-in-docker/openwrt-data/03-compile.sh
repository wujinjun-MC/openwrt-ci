#!/bin/bash
set -euo pipefail

echo "03-compile.sh start"

touch ./.env
export SHARED_ENV=$(realpath ./.env)
. "$SHARED_ENV"

cd "$OPENWRT_PATH"

# { Download DL Package(下载DL软件包) }cd "$OPENWRT_PATH"
make defconfig
if ! [[ -f "$OPENWRT_PATH/flags-downloaded-packages" ]]
then
    make download -j8
    #find dl -size -1024c -exec ls -l {} \;
    #find dl -size -1024c -exec rm -f {} \;
    touch "$OPENWRT_PATH/flags-downloaded-packages"
fi

# 检查和构建ccache
if grep "CONFIG_CCACHE=y" .config; then
    # 检查ccache二进制文件是否存在
    if [ -f "$OPENWRT_PATH/staging_dir/host/bin/ccache" ]; then
        echo "已打开ccache选项，并且二进制已存在，跳过二进制构建"
    else
        echo "已打开ccache选项，但ccache二进制需要构建到指定目录。正在构建..."
        if make tools/ccache/compile -j$(nproc); then
            echo "ccache 构建成功，本次编译将支持ccache"
            make tools/install
        else
            echo "ccache 构建失败，正在关闭ccache"
            sed -i 's/^CONFIG_CCACHE=y/# CONFIG_CCACHE is not set/' .config
            make defconfig
        fi
    fi
    
    # 提高ccache缓存大小以提高命中率 (可选)
    if ! [[ -v ccache_keep_default_cache_size ]]; then
        ccache_cache_size=${ccache_cache_size:-32G}
        echo "未设置 "'$ccache_keep_default_cache_size'" ，正在检测和提高ccache缓存大小到$ccache_cache_size"
        if [ -f .ccache/ccache.conf ]; then
            echo "已经设置过缓存大小，跳过"
        else
            echo "未设置缓存大小，正在写入设置"
            mkdir -p .ccache/
            touch .ccache/ccache.conf
        fi
    else
        echo "已设置"'$ccache_keep_default_cache_size'" ，跳过ccache缓存设置"
    fi
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
