#!/bin/bash
set -euo pipefail

echo "01-prepare-env.sh start"

# { Checkout, Clone Source Code(克隆源代码), Generate Release Tag (生成日期Tag) }
git clone --depth 1 https://github.com/ing0928/openwrt-ax5-jdc.git builder
git clone --depth 1 -b "$REPO_BRANCH" "$REPO_URL" builder/openwrt
cd builder
export GITHUB_WORKSPACE="$(pwd)"
cd openwrt
export OPENWRT_PATH="$(pwd)"
export VERSION_INFO=$(git show -s --date=short --format="作者: %an<br/>时间: %cd<br/>内容: %s<br/>hash: %H")
export RELEASE_TAG="IPQ60XX-AX5-JDC-6.12-$(date +%Y.%m.%d-%H%M)"
export FIRMWARE_TAG="$RELEASE_TAG"

# { Generate Variables(生成变量) }
cd "$GITHUB_WORKSPACE"
cp "$CONFIG_FILE" "$OPENWRT_PATH/.config"
cd "$OPENWRT_PATH"
make defconfig
export SOURCE_REPO="$(echo $REPO_URL | awk -F '/' '{print $(NF)}')"
export DEVICE_TARGET=$(cat .config | grep CONFIG_TARGET_BOARD | awk -F '"' '{print $2}')
export DEVICE_SUBTARGET=$(cat .config | grep CONFIG_TARGET_SUBTARGET | awk -F '"' '{print $2}')
    # 提取 Commit 信息
export COMMIT_HASH="$(cd $OPENWRT_PATH && git rev-parse HEAD)"
export SHORT_COMMIT="$(cd $OPENWRT_PATH && git rev-parse --short HEAD)"
export COMMIT_HASH_BUILDER="$(cd $GITHUB_WORKSPACE && git rev-parse HEAD)"
export SHORT_COMMIT_BUILDER="$(cd $GITHUB_WORKSPACE && git rev-parse --short HEAD)"

# { Install Feeds(安装feeds) }
cd "$OPENWRT_PATH"

    # 添加small-package https://github.com/kenzok8/small-package
echo >> feeds.conf.default
sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default

    # 添加istoreos界面 https://github.com/linkease/nas-packages-luci
echo >> feeds.conf.default
echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default
echo 'src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' >> feeds.conf.default

./scripts/feeds update -a
git clone --depth 1 "https://github.com/sbwml/openwrt_pkgs.git" package/new/custom
mv package/new/custom/luci-app-netspeedtest  package/new || true
mv package/new/custom/speedtest-cli package/new || true
rm -rf package/new/custom
./scripts/feeds install -a

# { Load Custom Configuration(加载自定义配置) }
cd "$GITHUB_WORKSPACE"
[ -e files ] && mv files "$OPENWRT_PATH/files"
[ -e "$CONFIG_FILE" ] && mv "$CONFIG_FILE" "$OPENWRT_PATH/.config"
chmod +x "$DIY_SCRIPT"
cd "$OPENWRT_PATH"
"$GITHUB_WORKSPACE/$DIY_SCRIPT"

# { Load Custom Overwrite(加载自定义覆写) }
chmod +x "$GITHUB_WORKSPACE/overwrite/overwrite-after-feeds-download.sh"
"$GITHUB_WORKSPACE/overwrite/overwrite-after-feeds-download.sh"

echo "01-prepare-env.sh success"
