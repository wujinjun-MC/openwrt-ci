#!/bin/bash
set -euo pipefail

echo "01-prepare-env.sh start"

touch ./.env
export SHARED_ENV=$(realpath ./.env)
export FIX_VERSION_INVALID=true
echo "export FIX_VERSION_INVALID=true" >> "$SHARED_ENV"

# { Checkout, Clone Source Code(克隆源代码), Generate Release Tag (生成日期Tag) }
[[ -v REPO_URL_BUILDER ]] || export REPO_URL_BUILDER="https://github.com/wujinjun-MC/openwrt-ci.git"
git clone --depth 1 "$REPO_URL_BUILDER" builder
git clone --depth 1 -b "$REPO_BRANCH" "$REPO_URL" builder/openwrt
cd builder
export GITHUB_WORKSPACE="$(pwd)"
echo "export GITHUB_WORKSPACE=$(pwd)" >> "$SHARED_ENV"
cd openwrt
export OPENWRT_PATH="$(pwd)"
echo "export OPENWRT_PATH=$(pwd)" >> "$SHARED_ENV"

# { Generate Variables(生成变量) } skipped
cd "$GITHUB_WORKSPACE"
cp "$CONFIG_FILE" "$OPENWRT_PATH/.config"

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
[ -e "$CONFIG_FILE" ] && cp "$CONFIG_FILE" "$OPENWRT_PATH/.config"
chmod +x "$DIY_SCRIPT"
cd "$OPENWRT_PATH"
"$GITHUB_WORKSPACE/$DIY_SCRIPT"

# { Load Custom Overwrite(加载自定义覆写) }
chmod +x "$GITHUB_WORKSPACE/overwrite/overwrite-after-feeds-download.sh"
"$GITHUB_WORKSPACE/overwrite/overwrite-after-feeds-download.sh"

# { Load Custom Patch(加载自定义修补) }
chmod +x $GITHUB_WORKSPACE/patch/patch-after-feeds-download.sh
$GITHUB_WORKSPACE/patch/patch-after-feeds-download.sh

echo "01-prepare-env.sh success"
