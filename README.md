<img width="768" src="https://github.com/openwrt/openwrt/blob/main/include/logo.png"/>

## 优化后的OpenWRT编译 for IP60xx-AX5-JDC

1. 修改默认管理地址
2. actions过程 (部分灵感来源于[旧项目](https://github.com/wujinjun-MC/build-openwrt))
   1. 支持远程调试和修改配置 `make menuconfig` (当前支持Cpolar，可设置两个token负载均衡)
   2. 将更多硬盘空间用于编译
   3. 直接进入单线程模式，并上传编译日志到artifact，便于排查错误
   4. 编译开始前上传配置`.config`到artifact
   5. (远程)自动进入工作目录、一键menuconfig
   6. release防覆盖
3. 添加软件包/源
   1. [nas-packages-luci](https://github.com/linkease/nas-packages-luci): iStoreOS风格主页、快速配置、应用商店、...
   2. AdGuard Home
   3. Tailscale (community)
   4. [small-package](https://github.com/kenzok8/small-package): 更多软件包
4. 自定义overwrite
   1. [01-nginx-disable-https](./overwrite/01-nginx-disable-https) nginx默认使用http
   2. 
5. release信息:
   1. 显示编译时所使用的commit (包括源码和本仓库的)
   2. 自定义发布信息 (Release notes): 需要远程连接后，在源码目录创建 `custom_release_notes.txt`
6. 解决了部分常见问题
   1. `ip-full` 和 `ip-tiny` 冲突 - 禁用 `ip-tiny`
   2. 修复UPnP - 默认打开libupnp
   3. 关闭 `luci-app-oaf` 避免编译appfilter(有bug无法编译)
   4. 自动编译缺失的 `ccache` 工具链 (即使已经安装 `ccache` 也不行，必须使用官方源码编译到指定目录)
7. 根据actions过程创建Dockerfile和所需的一键脚本，方便本地编译

### 已测试通过

注: 部分固件无法直接刷入，会导致重启循环。需要先刷入底包(上游或[pure build](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.28-0258))，然后使用系统更新 `sysupgrade` 刷入

1. luci类 (省略 `luci-app-` 开头)
   1. [ddnsto,linkease](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-1140)
   2. [amule,upnp](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-1139)
   3. [qbittorrent,adblock-fast,adguard](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-1138)
   4. [tailscale-community](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-0837)
   5. [adblock-fast,adguard](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-0832)
   6. netdata
   7. [amule,qbittorrent,transmission](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-1457)
   8. 顺序开启部分编译项 (20260127 ~ )
      1. [acl, advanced, alpha-config, argone-config](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-1808) -- argone主题加载失败
      2. [arpbind, autoipsetadder, autoreboot, autorepeater, banip, bcp38, beardropper](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-2004)
      3. [control-timewol, control-webrestriction, control-weburl, cpufreq, cpulimit, dcwapd](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-2201)
      4. [cifs-mount, cloudflared, cloudflarespeedtest, commands](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-2359)
      5. [ddnsto, diskman(not include btrfs), dnsfilter(必须检查默认的`Base system -> dnsmasq`是否关闭(与`dnsmasq-full`冲突)), dnsmasq-ipset(也是个`dnsmasq-full`), dnsproxy](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases)
2. 将默认uhttpd换成nginx (需要使用[overwrite 1](./overwrite/01-nginx-disable-https) 自动关闭HTTPS)

### 无法使用
1. `ERROR: info field 'version' has invalid value: package version is invalid` (可能因为OpenWRT官方从OPKG换成apk,部分软件包未适配，请耐心等待)
   1. luci-app-uptimekuma
   2. luci-app-store, luci-app-quickstart, luci-app-istorex ...
   3. luci-theme-design, luci-app-design-config
   4. luci-app-drawio
   5. luci-app-ittools
2. 内核不兼容
   1. kmod-oaf, luci-app-appfilter, luci-app-oaf, PACKAGE_appfilter
3. 源码有bug
   1. luci-app-cjdns: `AttributeError: module 'collections' has no attribute 'MutableSet'`
4. 冲突
   1. BitTorrent, P2P全开 导致 qbittorrent 安装失败
5. 看起来编译成功，实际刷入后用不了
   1. luci-theme-argone (+ luci-app-argone-config): 设置主题后直接出现luci错误，必须进SSH改回原来主题

## 原README ↓

```markdown
## 特别提示 [![](https://img.shields.io/badge/-个人免责声明-FFFFFF.svg)](#特别提示-)

- **本人不对任何人因使用本固件所遭受的任何理论或实际的损失承担责任！**

- **本固件禁止用于任何商业用途，请务必严格遵守国家互联网使用相关法律规定！**

## 项目说明 [![](https://img.shields.io/badge/-项目基本介绍-FFFFFF.svg)](#项目说明-)
- 固件默认管理地址：`192.168.1.1` 默认用户：`root` 默认密码：`password`
- 源码：[LiBwrt](https://github.com/LiBwrt-op/openwrt-6.x)
- 源码：[immortalwrt](https://github.com/immortalwrt/immortalwrt)
- 云编译来源：https://github.com/haiibo/OpenWrt

## 固件下载 [![](https://img.shields.io/badge/-编译状态及下载链接-FFFFFF.svg)](#固件下载-)
点击下表中 [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?style=flat&logo=hack-the-box)](https://github.com/haiibo/OpenWrt/releases) 即可跳转到该设备固件下载页面
| 平台+设备名称 | 固件编译状态 | 配置文件 | 固件下载 |
| :-------------: | :-------------: | :-------------: | :-------------: |
| [![](https://img.shields.io/badge/AX5_JDC-WIFI-32C955.svg?logo=openwrt)](https://github.com/ing0928/openwrt-ax5-jdc/blob/main/.github/workflows/IPQ60XX-AX5-JDC.yml) | [![](https://github.com/ing0928/openwrt-ax5-jdc/actions/workflows/IPQ60XX-AX5-JDC.yml/badge.svg)](https://github.com/ing0928/openwrt-ax5-jdc/actions/workflows/IPQ60XX-AX5-JDC.yml) | [![](https://img.shields.io/badge/编译-配置-orange.svg?logo=apache-spark)](https://github.com/ing0928/openwrt-ax5-jdc/blob/main/configs/ipq60xx-ax5-jdc-6.12.config) | [![](https://img.shields.io/badge/下载-链接-blueviolet.svg?logo=hack-the-box)](https://github.com/ing0928/openwrt-ax5-jdc/releases/IPQ60XX-AX5-JDC-6.12) |


## 定制固件 [![](https://img.shields.io/badge/-项目基本编译教程-FFFFFF.svg)](#定制固件-)
1. 首先要登录 Gihub 账号，然后 Fork 此项目到你自己的 Github 仓库
2. 修改 `configs` 目录对应文件添加或删除插件，或者上传自己的 `xx.config` 配置文件
3. 插件对应名称及功能请参考恩山网友帖子：[Applications 添加插件应用说明](https://www.right.com.cn/forum/thread-3682029-1-1.html)
4. 如需修改默认 IP、添加或删除插件包以及一些其他设置请在 `libwrt.sh` 文件内修改
5. 添加或修改 `xx.yml` 文件，最后点击 `Actions` 运行要编译的 `workflow` 即可开始编译
6. 编译大概需要3-5小时，编译完成后在仓库主页 [Releases](https://github.com/ing0928/openwrt-ax5-jdc/releases) 对应 Tag 标签内下载固件

如果你觉得修改 config 文件麻烦，那么你可以点击此处尝试本地提取 https://github.com/LiBwrt/openwrt-6.x

**如果看不懂编译界面可以参考 YouTube 视频：[软路由固件 OpenWrt 编译界面设置](https://www.youtube.com/watch?v=jEE_J6-4E3Y&list=WL&index=7)**


<a href="#readme">
<img src="https://img.shields.io/badge/-返回顶部-FFFFFF.svg" title="返回顶部" align="right"/>
</a>
```