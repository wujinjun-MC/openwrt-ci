<img width="768" src="https://github.com/openwrt/openwrt/blob/main/include/logo.png"/>

> [!NOTE]
>
> 之前做的是 AX5 JDC 的适配，已经移动到 old-ax5-jdc 分支，停止开发
>
> 当前分支主要用于: nn6000 v1/v2

## 优化后的OpenWRT编译 for IP60xx-AX5-JDC

1. 修改默认管理地址
2. actions过程 (部分灵感来源于[旧项目](https://github.com/wujinjun-MC/build-openwrt))
   1. 支持远程调试和修改配置 `make menuconfig` (当前支持 Cpolar ，可设置两个 token 负载均衡，建议使用[此 Tampermonkey 脚本](https://greasyfork.org/scripts/564723)以加快操作)
   2. 将更多硬盘空间用于编译
   3. 直接进入单线程模式，并上传编译日志到 artifact ，便于排查错误
   4. 编译开始前上传配置 `.config` 到 artifact
   5. (远程)自动进入工作目录、一键 menuconfig
   6. release 防覆盖
   7. 兼容 opkg 模式
3. 添加软件包/源
   1. [nas-packages-luci](https://github.com/linkease/nas-packages-luci): iStoreOS风格主页、快速配置、应用商店、...
   2. AdGuard Home
   3. Tailscale (community)
   4. [small-package](https://github.com/kenzok8/small-package): 更多软件包
4. 自定义overwrite
   1. [01-nginx-disable-https](./overwrite/01-nginx-disable-https) nginx默认使用http
   2. 
5. 自定义patch
   1. [01-fix-version-invalid](./patch/01-fix-version-invalid.py*) 修复旧软件包 `ERROR: info field 'version' has invalid value: package version is invalid` 问题
   2. 
6. release信息:
   1. 显示编译时所使用的commit (包括源码和本仓库的)
   2. 自定义发布信息 (Release notes): 需要远程连接后，在源码目录创建 `custom_release_notes.txt`
7. 解决了部分常见问题
   1. `ip-full` 和 `ip-tiny` 冲突 - 禁用 `ip-tiny`
   2. 修复UPnP - 默认打开libupnp
   3. 关闭 `luci-app-oaf` 避免编译 KMOD_oaf (有bug无法编译) (依赖 by appfilter)
   4. 自动编译缺失的 `ccache` 工具链 (即使已经安装 `ccache` 也不行，必须使用官方源码编译到指定目录)
8. 根据actions过程创建Dockerfile和所需的一键脚本，方便本地编译

### 已测试通过

注: 部分固件无法直接刷入，会导致重启循环。需要先刷入底包(上游)，然后使用系统更新 `sysupgrade` 刷入

- AX5-JDC: 具体查看 old-ax5-jdc 分支

- nn6000:
   1. 大杂烩 (why = AX5-JDC 已经积累很多可用软件包，而且 nn6000 系统分区 2G 远大于 AX5-JDC's 128M)
      1. 

### 无法使用

- AX5-JDC: 具体查看 old-ax5-jdc 分支

- nn6000:
   1. 冲突
      1. `wifidog` and `apfree-wifidog`:
         - log: `ERROR: wifidog-1.3.0-r9: trying to overwrite etc/wifidog-msg.html owned by apfree-wifidog-7.10.2082-r1.`
         - prefer: `apfree-wifidog`
      2. `libmicrohttpd-ssl-1.0.2-r1` (依赖 by `gnunet`) and `libmicrohttpd-no-ssl-1.0.2-r1` (依赖 by `nodogsplash`):
         - log:
            ```
            ERROR: unable to select packages:
            libmicrohttpd-ssl-1.0.2-r1:
               conflicts: libmicrohttpd-no-ssl-1.0.2-r1[libmicrohttpd=1.0.2-r1]
               satisfies: world[libmicrohttpd-ssl]
                           gnunet-hostlist-0.25.1-r2[libmicrohttpd-ssl]
            libmicrohttpd-no-ssl-1.0.2-r1:
               conflicts: libmicrohttpd-ssl-1.0.2-r1[libmicrohttpd=1.0.2-r1]
               satisfies: world[libmicrohttpd-no-ssl]
                           nodogsplash-5.0.2-r1[libmicrohttpd-no-ssl]
            make[2]: *** [package/Makefile:100: package/install] Error 4
            ```
      3. `luci-app-fileassistant` and `luci-app-advanced`
         - log:
            ```
            ERROR: luci-app-fileassistant-1.0-r8: trying to overwrite usr/lib/lua/luci/controller/fileassistant.lua owned by luci-app-advanced-1.20-r20220218.
            ERROR: luci-app-fileassistant-1.0-r8: trying to overwrite usr/lib/lua/luci/view/fileassistant.htm owned by luci-app-advanced-1.20-r20220218.
            ERROR: luci-app-fileassistant-1.0-r8: trying to overwrite www/luci-static/resources/fileassistant/fb.css owned by luci-app-advanced-1.20-r20220218.
            ERROR: luci-app-fileassistant-1.0-r8: trying to overwrite www/luci-static/resources/fileassistant/fb.js owned by luci-app-advanced-1.20-r20220218.
            ERROR: luci-app-fileassistant-1.0-r8: trying to overwrite www/luci-static/resources/fileassistant/file-icon.png owned by luci-app-advanced-1.20-r20220218.
            ERROR: luci-app-fileassistant-1.0-r8: trying to overwrite www/luci-static/resources/fileassistant/folder-icon.png owned by luci-app-advanced-1.20-r20220218.
            ERROR: luci-app-fileassistant-1.0-r8: trying to overwrite www/luci-static/resources/fileassistant/link-icon.png owned by luci-app-advanced-1.20-r20220218.
            ```
   2. 源码有 bug
      1. `bwm-ng`:
         ```
         output.c: In function 'print_header':
         output.c:154:13: error: format not a string literal and no format arguments [-Werror=format-security]
         154 |             wprintw(stdscr,show_all_if2str());
               |             ^~~~~~~
         ```

### 建议

1. `make menuconfig`
   1. 勾选软件包时，先选择 `luci` ，再选择其他
   2. 已经添加软件源，部分软件包应该在某处，但是页面上找不到?
      1. 按下 `/` 搜索软件包
      2. 留意 `Depends on: ` 部分，确保条件已满足
      3. 查看 `Location:` ，获取软件包的具体路径
   3. 记录自己开启/关闭的功能，因为关闭功能时不会自动取消依赖项
      1. 先打开一次 `make menuconfig` ，不更改任何选项，保存并退出
      2. 备份好原始全量 `.config`
      3. 开始勾选软件包，可以 `Save` 然后对比文件变化。记得记录打开/关闭了什么
      4. 之后需要关闭软件包时，建议恢复原始 `.config` ，然后重新打开其他软件包

### Q&A

1. 更新系统 (sysupgrade) 后， SSH 可连接，但是 luci (管理页面) 打不开?
   - 输入 `service` 命令查看服务状态，可能是 HTTP 服务器没有运行，可以手动启用和启动
   - 多见于 `make menuconfig` 时切换是否选择 nginx 。如果启用过 nginx 但后来编译不含 nginx ， uhttpd 并不会自动恢复启用，请自行设置启用和启动。
2. 添加了不兼容的主题，导致 luci 报错进不去?
   - 用 nano 或 vi 修改 `/etc/config/luci` ，修改一行为 `option mediaurlbase '/luci-static/argon'` 再刷新页面

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

## Others

...
