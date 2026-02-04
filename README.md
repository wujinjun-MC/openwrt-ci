<img width="768" src="https://github.com/openwrt/openwrt/blob/main/include/logo.png"/>

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

注: 部分固件无法直接刷入，会导致重启循环。需要先刷入底包(上游或~~[pure build](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.28-0258)~~ (也无法启动))，然后使用系统更新 `sysupgrade` 刷入

1. luci应用类 (省略 `luci-app-` 开头)
   1. [ddnsto,linkease](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-1140)
   2. [amule,upnp](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-1139)
   3. [qbittorrent,adblock-fast,adguard](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-1138)
   4. [tailscale-community](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-0837)
   5. [adblock-fast,adguard](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-0832)
   6. netdata
   7. [amule,qbittorrent,transmission](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-1457)
   8. 顺序开启部分编译项 (20260127 ~ 20260201)
      1. [acl, advanced, alpha-config, argone-config](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-1808)
         - 启动成功
         - argone主题加载失败
         - factory=30 MB, sysupgrade=29.5 MB
      2. [arpbind, autoipsetadder, autoreboot, autorepeater, banip, bcp38, beardropper](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-2004)
         - 启动成功
         - [autorepeater失败](#failed-plugin-luci-app-autorepeater)
         - bcp38: 找不到在哪里
         - factory=30.5 MB, sysupgrade=30 MB
      3. [control-timewol, control-webrestriction, control-weburl, cpufreq, cpulimit, dcwapd](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-2201)
         - 启动成功
         - dcwapd: 开启后会立即断开连接，无法恢复，需要 等待回滚 / 重新刷机
         - factory=30.1 MB, sysupgrade=29.6 MB
      4. [cifs-mount, cloudflared, cloudflarespeedtest, commands](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.27-2359)
         - 启动成功
         - factory=39.2 MB, sysupgrade=38.7 MB
      5. [ddnsto, diskman, dnsfilter, dnsmasq-ipset, dnsproxy](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.28-1024)
         - 启动成功
         - diskman: 不包括btrfs
         - dnsfilter:
            - 必须检查默认的 `Base system -> dnsmasq` 是否关闭 (与 `dnsmasq-full` 冲突)
            - 需要联网下载规则等必须文件，否则显示"未运行"
         - dnsmasq-ipset: 也使用 `dnsmasq-full`
         - factory=36.6 MB, sysupgrade=36.1 MB
      6. [drawio, gogs, heimdall, homeassistant, **homeredirect** (previously PKG_VERSION invalid)](about:blank)
         - 启动成功
         - drawio, gogs, heimdall, homeassistant: 要求安装相应的 Docker 容器才能使用
         - homeredirect: `权限不足，无法读取 UCI 配置。` 可能因为不兼容新系统
         - Docker本地编译，没有Release
         - factory=36 M, sysupgrade=36 M
      7. [eqos, eqosplus, example](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.28-1034)
         - 启动成功
         - 找不到eqosplus?
            - 在 Control -> 定时限速
         - factory=29.9 MB, sysupgrade=29.4 MB
      8. [fastnet, fchomo, filemanager, fullconenat](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.28-1038)
         - 启动成功
         - fullconenat
            - 设置为指定 IP 或 全网开启后，仍然显示未运行
            - 原版已经支持此功能，不要重复添加
         - factory=45.6 MB, sysupgrade=45.1 MB
      9. [fwknopd, gost, guest-wifi, hd-idle](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.29-0253)
         - 启动成功
         - guest-wifi: 点击添加后没有反应，而且引起无线设置异常，需要重建
         - factory=38.6 MB, sysupgrade=38.2 MB
      10. [https-dns-proxy, ikoolproxy](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.28-2316)
         - 启动成功
         - factory=30.8 MB, sysupgrade=30.4 MB
      11. [internet-detector, iperf3-server, iptvhelper, irqbalance, istoreenhance, istorego](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.29-1836)
         - 启动成功
         - istoreenhance (KSpeeder): [Runtime error](#failed-plugin-luci-app-istoreenhance)
         - factory=84 MB, sysupgrade=83.5 MB
      12. [kai, ksmbd, ledtrig-rssi, ledtrig-switch](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.02.02-1026)
         - 启动成功
         - kai: 实际上是 `酷友社AI`
         - ledtrig-rssi 和 ledtrig-switch: 在 系统 -> LED 配置
         - factory=67 MB, sysupgrade=66.5 MB
      13. [lldpd, lxc, mac, mfun](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.02.02-1111-21575899723)
         - 启动成功
         - mfun: 无法使用 (省略)
         - factory=82 MB, sysupgrade=81.5 MB
      14. [microsocks, minidlna, mjpg-streamer, mosquitto](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.28-2305)
         - 启动成功
         - factory=31.4 MB, sysupgrade=30.8 MB
      15. [msd_lite, my-dnshelper](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.02.02-0249)
         - 启动成功
         - factory=29.7 MB, sysupgrade=29.2 MB
      16. [natter2, netdata, netspeedtest](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.29-2317)
         - 启动成功
         - factory=44.6 MB, sysupgrade=44 MB
      17.  [nfs, nginx-manager, nlbwmon, npc, nps, frpc, frps](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.02.02-0250)
         - 启动成功
         - nginx-manager: [errors](#failed-plugin-luci-app-nginx-manager)
            - cause by: [tabmenu.htm not found](https://github.com/sundaqiang/openwrt-packages/issues/5#issuecomment-1074677929)
         - factory=45 MB, sysupgrade=44.5 MB
      18.  [ngrokc, nut, olsr, olsr-services, olsr-viz](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.29-2027)
         - 启动成功
         - olsr 系列软件包导致进不去管理页面，一直自动跳到 olsr 可视化 (olsr-viz) 页面，必须通过 SSH 删除 `luci-app-olsr` 和所有依赖，重新输入管理页面后才能进入管理页面
         - factory=30.6 MB, sysupgrade=30.1 MB
      19.  [poweroff, poweroffdevice, privoxy](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.29-2319)
         - 启动成功
         - factory=29.8 MB, sysupgrade=29.3 MB
      20.  [pushbot, qbittorrent, qos, ramfree](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.29-2337)
         - 启动成功
         - factory=43.3 MB, sysupgrade=42.9 MB
      21.  [rclone, rp-pppoe-server](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.30-0915)
         - 启动成功
         - [rclone 失败](#failed-plugin-luci-app-rclone)，需要补充 `luci-lib-ipkg`
         - factory=53.3 MB, sysupgrade=52.8 MB
      22.  [rustdesk-server, ser2net](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.30-0915)
         - 启动成功
         - factory=33.1 MB, sysupgrade=32.6 MB
      23.  [spotifyd, squid, sshtunnel, ssr-mudb-server, ssr-plus (defaults)](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.30-0256)
         - 启动成功
         - factory=58.9 MB, sysupgrade=58.4 MB
      24.  [openclash, openthread, openvpn, openvpn-client, openwisp](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases)
         - 启动成功
         - openthread: [运行失败](#failed-plugin-luci-app-openthread)
         - Docker本地编译，没有Release
         - sysupgrade=38.1 M
      25.  [ota, p910nd, packet-capture, pagekitec, partexp, passwall2 (defaults), pbr](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases)
         - 启动成功
         - ota: 只有一个检查更新按钮，应该是检查官方版更新，此处无意义
         - p910nd: 不拓展 USB 口并连接打印机则没有作用
         - Docker本地编译，没有Release
         - sysupgrade=44.1 M
      26.  [shutdown, smartdns, socat, softether, softethervpn](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.30-2107)
         - 启动成功
         - smartdns: 不能勾选WebUI，否则等着超时吧 (Node.JS怪谈)
         - factory=34.3 MB, sysupgrade=33.8 MB
      27.  [tailscale-community, taskplan, tcpdump, timecontrol, timewol, tinyfilemanager](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases)
         - Docker本地编译，没有Release
         - factory=44 M, sysupgrade=43 M
      28.  [tinyproxy, tor, travelmate, transmission, ua2f, udp2raw, udpxy, unblockmusic](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases)
         - unblockmusic: 需要选择 `UnblockNeteaseMusic Golang Version`
         - Docker本地编译，没有Release
         - factory=36 M, sysupgrade=36 M
      29.  [unbound](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.30-1734)
         - 启动成功，可进入软件界面
         - factory=30.2 MB, sysupgrade=29.7 MB
      30.  [usteer, v2raya, vlmcsd, vnstat2, vsftpd](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.30-1514)
         - 启动成功
         - factory=47 MB, sysupgrade=46.5 MB
      31.  [watchcat, watchdog, webd, webdav, webviewdev](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases)
         - webd: 取消勾选 `Include webd Binary`
         - Docker本地编译，没有Release
         - factory=32 M, sysupgrade=31 M
      32.  [wechatpush, wifischedule, wizard, wol, wolplus](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases)
         - wechatpush: 勾选全部附加项
         - Docker本地编译，没有Release
         - factory=32 M, sysupgrade=32 M
      33.  [wrtbwmon, xfrpc, xinetd](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.01.31-0221)
         - 启动成功
         - factory=29.9 MB, sysupgrade=29.4 MB
      34.  [luci-app-zerotier, luci-themedog](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases)
         - 不省略 `luci-app-` 开头，因为不以 `luci-app-` 开头
         - Docker本地编译，没有Release
         - factory=31 M, sysupgrade=30 M
      35.  [chatgpt-web, clamav, ddns-go](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases)
         - Docker本地编译，没有Release
         - factory=38 M, sysupgrade=38 M
      36.  [supervisord](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.02.01-0124)
         - 启动成功
         - 为什么显示 `Supervisord 未运行`
            - 来自 [项目说明](https://github.com/sundaqiang/openwrt-packages/tree/master/luci-app-nginx-manager):
               - > 插件没附带二进制文件，第一次使用需要直接点按钮更新。如果更新失败，自行去项目下载二进制文件。
         - factory=29.6 MB, sysupgrade=29.2 MB
      37.  [statistics, supervisord](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.02.01-1107)
         - 启动成功
         - factory=29.9 MB, sysupgrade=29.4 MB
2. 将默认uhttpd换成nginx (需要使用[overwrite 1](./overwrite/01-nginx-disable-https) 自动关闭HTTPS)
3. luci其他类
   1. [打开所有主题; luci-themedog, luci-app-alpha-config, luci-app-argone-config](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.02.01-1157)
      - 启动成功
      - 主题加载失败: ATMateriel (包括 `_Brown` 和 `_red`), Argone, Design, Edge, INas (切换以后还是 `Argon` 界面), Opentopd, ThemeDog (菜单栏无法显示), ifit, tomato
      - factory=34.1 MB, sysupgrade=33.7 MB
   2. [luci-proto-pppossh, luci-proto-wireguard, luci-mod-dashboard, luci-mod-istorenext](https://github.com/wujinjun-MC/openwrt-ax5-jdc/releases/tag/IPQ60XX-AX5-JDC-6.12-2026.02.02-1110-21575902269)
      - factory=30.2 MB, sysupgrade=29.7 MB
4. 将默认 APK 包管理器换成 OPKG (可以安装 *.ipk 软件包)
   1. [apk->opkg, luci-lib-ipkg, luci-nginx, luci-app-{alpha,argone,design}-config, luci-app-nginx-manager, all themes on](about:blank)
      - 启动成功
      - Docker本地编译，没有Release
      - sysupgrade=34.2 MB
5. Utilities类
   1. 无分类
      1. [coap-client, colrm, cpulimit, cpupower, cpusage, dbus-utils, device-observatory, dmesg](about:blank)
         - 启动成功
         - coap-client: 一直提示 Not Found ，输入程序路径也不行
         - cpupower: 不是 Intel CPU ，用不上
         - device-observatory: 不知道在哪里
         - Docker本地编译，没有Release
         - sysupgrade=29.5 MB
      2. [coreutils](about:blank)
         - 启动成功
         - coreutils: 全部打开
         - Docker本地编译，没有Release
         - sysupgrade=30.8 MB
      3. [docker, docker-compose, dockerd, luci-app-docker, luci-app-dockerman](about:blank)
         - 启动成功
         - Docker本地编译，没有Release
         - sysupgrade=87.9 MB
      4. [dos2unix, dropbearconvert, dtc (+ Build dtc as static binary), enterprise-numbers, eza, fastfetch, fdt-utils](about:blank)
         - 启动成功
         - dtc: 用法未知
         - enterprise-numbers: 没看到命令
         - Docker本地编译，没有Release
         - sysupgrade=32.0 MB
      5. [file, findutils, flock, fuse-overlayfs, ~~fx~~ (忘记勾选), gawk, gddrescue, getopt, ~~gnuplot~~ (忘记勾选), grep](about:blank)
         - 启动成功
         - Docker本地编译，没有Release
         - sysupgrade=30.2 MB
      6. [mmc-utils, more, moreutils, namei, nand-utils, naywatch, netspeedtest, nnn, nsenter, nss-utils, nssinfo, nsutils, oath-toolkit](about:blank)
         - 启动成功
         - more, moreutils: 仍然显示 BusyBox
         - naywatch: 持续错误
            ```
            sh: 1: unknown operand
            BusyBox v1.37.0 (2026-01-30 05:13:48 UTC) multi-call binary.

            Usage: sleep [N]...

            Pause for a time equal to the total of the args given, where each arg can
            have an optional suffix of (s)econds, (m)inutes, (h)ours, or (d)ays
            ```
         - netspeedtest: 需要安装 `luci-app-` 版，直接在 `Utilities` 安装，找不到命令
         - nssinfo: 退出会卡住，再按一次 `Ctrl-C` 出现 `Segmentation fault`
         - Docker本地编译，没有Release
         - sysupgrade=33.9 MB
      6. [openssl-util, owipcalc, owut, passh, pax-utils (+ build with support for seccomp), pciids, pciutils, pkgen](about:blank)
         - 启动成功
         - pciids, pciutils: 无意义， `lspci` 没有任何输出
         - Docker本地编译，没有Release
         - sysupgrade=30.0 MB
   2. 有分类
      1. BitTorrent
         1. [mktorrent, opentracker, qbittorrent-enhanced-edition, rtorrent-rpc](about:blank)
            - 启动成功
            - Docker本地编译，没有Release
            - sysupgrade=43.7 MB
      2. Download Manager
         1. [ariang, ariang-nginx, leech, webui-aria2](about:blank)
            - 启动成功
            - Docker本地编译，没有Release
            - sysupgrade=31.9 MB
      2. File Transfer
         1. [aria2, atftp, atftpd, croc, curl, rclone, rclone-config, rrsync (requires Languages->Python->python3-light), rsync (+ Enable lz4, extremely fast compression, + Enable xxhash, extremely fast hash), rsyncd, transfer, unishare, vsftpd](about:blank)
            - 启动成功
            - 包括: LuCI->Applications->[luci-app-rclone, luci-app-unishare, luci-app-vsftpd]
            - Docker本地编译，没有Release
            - sysupgrade=73.2 MB

### 无法使用
1. `ERROR: info field 'version' has invalid value: package version is invalid` (可能因为OpenWRT官方从OPKG换成apk,部分软件包未适配，请耐心等待) (如果急需这些软件包，需要在新增actions run时开启 `fix_version_invalid` / 本地Docker编译时设置 `FIX_VERSION_INVALID=true` 。将会使用overwrite遍历修复版本号(可能会导致其他正常软件包的版本号被修改))
   1. luci-app-uptimekuma
   2. luci-app-store (依赖 by luci-app-quickstart, luci-app-istorex, luci-app-routerdog ...)
   3. luci-theme-design, luci-app-design-config
   4. luci-app-drawio
   5. luci-app-gogs
   6. luci-app-heimdall
   7. luci-app-homeassistant
   8. luci-app-homeredirect
   9. luci-app-istorepanel
   10. luci-app-ittools
   11. luci-app-jackett
   12. luci-app-mymind
   13. luci-app-nastools
   14. luci-app-openwebui
   15. luci-app-owntone
   16. luci-app-penpot
   17. luci-app-rtbwmon
   18. luci-app-shortcutmenu
   19. luci-app-sunpanel
   20. luci-app-systools
   21. luci-app-typecho
   22. luci-app-unifi
   23. luci-app-unishare (未测试)
   24. luci-app-wan-mac (未测试)
   25. luci-app-xteve
   26. speedtestcli (依赖 by luci-app-systools)
   27. vmease (依赖 by luci-app-istoredup)
2. 内核不兼容
   1. kmod-oaf (依赖 by luci-app-appfilter, luci-app-oaf, PACKAGE_appfilter)
3. 源码有bug
   1. luci-app-cjdns: `AttributeError: module 'collections' has no attribute 'MutableSet'`
   2. luci-app-quickstart: `luci-app-quickstart does not support JavaScript source minification`, `luci-app-quickstart does not support CSS source minification`
4. 冲突
   1. BitTorrent, P2P全开 导致 qbittorrent 安装失败
   2. "ip{,6}tables-" + "{nft,zz-legacy}" 直接冲突
5. 看起来编译成功，实际刷入后用不了 (参见 [已测试通过](#已测试通过) 的测试状态)
   1. luci-theme-argone (依赖 by luci-app-argone-config): 设置主题后直接出现luci错误，必须进SSH改回原来主题
   99999. ...
6. 迷惑行为
   1. luci-app-mosdns: 自己覆盖自己 `ERROR: luci-app-mosdns-1.6.16-r1: trying to overwrite etc/init.d/mosdns owned by mosdns-5.3.3-r1.`
   2. luci-app-pppoe-relay: 自己覆盖自己 `ERROR: luci-app-pppoe-relay-26.028.32477~ec83425: trying to overwrite etc/init.d/pppoe-relay owned by rp-pppoe-relay-4.0-r2.`
   3. luci-app-pppoe-server: 自己覆盖自己 `ERROR: luci-app-pppoe-server-20200326-r8: trying to overwrite etc/init.d/pppoe-server owned by rp-pppoe-server-4.0-r2.`
   4. luci-app-openvpn-server: 自己覆盖自己 `ERROR: luci-app-openvpn-server-3.0-r0: trying to overwrite etc/config/openvpn owned by openvpn-openssl-2.6.14-r4.`
   5. luci-app-wifidog: 自己覆盖自己 `ERROR: luci-app-wifidog-2.0-r2: trying to overwrite etc/init.d/wifidog owned by wifidog-1.3.0-r9.`
7. 缺失依赖
   1. luci-app-gowebdav: 找不到 `gowebdav`
   2. luci-app-natmap: 找不到 `natmap`
   3. ~~luci-app-webd: 找不到 `webd`~~ (不勾选 `Include webd Binary` 即可)
   4. libnetconf2 (依赖 by netopeer2-cli, netopeer2-server): 找不到以下依赖
      ```
      libmbedcrypto.so.16
      libmbedtls.so.21
      libmbedx509.so.7
      ```
   5. python-flask-httpauth (依赖 by onionshare-cli): `FileNotFoundError: [Errno 2] No such file or directory: '/home/ubuntu/builder/openwrt/build_dir/target-aarch64_cortex-a53_musl/pypi/Flask-HTTPAuth-4.8.0//openwrt-build/Flask_HTTPAuth-4.8.0-*.whl'`
8. 工具链兼容性 (一般发生在停更的软件包)
   1. n2n (依赖 by luci-app-n2n): `Compatibility with CMake < 3.5 has been removed from CMake`
   2. minisign: `Compatibility with CMake < 3.5 has been removed from CMake`
   3. scutclient (依赖 by luci-app-scutclient): `Compatibility with CMake < 3.5 has been removed from CMake`
9. 可能需要更改编译时生成的配置/脚本 (但make过程中不可能实现)
   1. luci-app-nginx-pingos: `./configure: error: the HTTP rewrite module requires the PCRE library. You can either disable the module by using --without-http_rewrite_module option, or install the PCRE library into the system, or build the PCRE library statically from the source with nginx by using --with-pcre=<path> option.`
10. 导致编译时间过长 / Github Actions 超时
   1. 需要Node.js
      1. luci-app-snmpd
      2. luci-app-alist
      3. luci-app-openlist
      4. luci-app-unblockmusic (如果选择 `UnblockNeteaseMusic NodeJS Version`)
      5. luci-app-unblockneteasemusic (这个没有其他选项，必须依赖Node)
      6. luci-app-smartdns (可能是因为 +WebUI)
      7. luci-app-subconverter
      99999.     ...
11. 体积太大，可能无法刷入
   1. Docker。除了本身，需要docker的软件包如下 (部分)
      1. luci-app-penpot
      2. luci-app-ubuntu
      3. luci-app-ubuntu2
      4. luci-app-wxedge
      5. luci-app-drawio
      6. luci-app-gogs
      7. luci-app-heimdall
      8. luci-app-homeassistant
      99999.     ...
12. 文件错误
   1. speedtest-web (依赖 by ): `speedtest-web-1.1.5.tar.zst: Wrong hash (probably caused by .gitattributes), expecting 63dad14ce21c78b37f223aacc4fd4611bbe1f9619afff8d52a38186441cb6a86, got aff79406f9050e7ccc04af51458e00e49a90821dd50fb4cc2ab5d7fa7a66f3db`
13. 未知
   1. libsysrepo (依赖 by sysrepo, sysrepocfg, sysrepoctl)
   2. supervisor: `make[3]: *** [Makefile:46: /home/wujinjun/git/openwrt-ax5-jdc/builder-in-docker/openwrt-data/builder/openwrt/build_dir/target-aarch64_cortex-a53_musl/pypi/supervisor-python3/supervisor-4.1.0/.built] Error 1`

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

### 详细信息

#### 安装后无法使用的插件

##### 缺失依赖

###### luci.model.ipkg

1. luci-app-autorepeater <span id="failed-plugin-luci-app-autorepeater"></span>

```
/usr/lib/lua/luci/ucodebridge.lua:23: /usr/lib/lua/luci/template.lua:181: Failed to execute template 'autorepeater/wifi_overview'.
A runtime error occurred: /usr/lib/lua/luci/tools/autorepeater.lua:8: module 'luci.model.ipkg' not found:
no field package.preload['luci.model.ipkg']
no file './luci/model/ipkg.lua'
no file '/usr/share/lua/luci/model/ipkg.lua'
no file '/usr/share/lua/luci/model/ipkg/init.lua'
no file '/usr/lib/lua/luci/model/ipkg.lua'
no file '/usr/lib/lua/luci/model/ipkg/init.lua'
no file './luci/model/ipkg.so'
no file '/usr/lib/lua/luci/model/ipkg.so'
no file '/usr/lib/lua/loadall.so'
no file './luci.so'
no file '/usr/lib/lua/luci.so'
no file '/usr/lib/lua/loadall.so'
stack traceback:
[C]: in function 'require'
/usr/lib/lua/luci/tools/autorepeater.lua:8: in main chunk
[C]: in function 'require'
[string "/usr/lib/lua/luci/view/autorepeater/wifi_ov..."]:9: in main chunk

In error(), file [C]
called from function [anonymous function] (/usr/lib/lua/luci/ucodebridge.lua:23)
called from function ((tail call))
In [anonymous function](), file /usr/share/ucode/luci/runtime.uc, line 148, byte 45:
  called from function [arrow function] (/usr/share/ucode/luci/dispatcher.uc:781:71)
  called from function render ([C])
  called from function render_action (/usr/share/ucode/luci/dispatcher.uc:768:24)
  called from function run_action (/usr/share/ucode/luci/dispatcher.uc:782:5)
  called from function [anonymous function] (/usr/share/ucode/luci/dispatcher.uc:1003:48)
  called from function run_action (/usr/share/ucode/luci/dispatcher.uc:831:78)
  called from function [anonymous function] (/usr/share/ucode/luci/dispatcher.uc:1003:48)
  called from anonymous function (/www/cgi-bin/luci:39:13)

 `        return lcall.call(modname, method, ...args);`
  Near here ----------------------------------------^
```

2. luci-app-rclone <span id=failed-plugin-luci-app-rclone></span>

```
/usr/lib/lua/luci/ucodebridge.lua:23: /usr/lib/lua/luci/model/cbi/rclone.lua:4: module 'luci.model.ipkg' not found:
no field package.preload['luci.model.ipkg']
no file './luci/model/ipkg.lua'
no file '/usr/share/lua/luci/model/ipkg.lua'
no file '/usr/share/lua/luci/model/ipkg/init.lua'
no file '/usr/lib/lua/luci/model/ipkg.lua'
no file '/usr/lib/lua/luci/model/ipkg/init.lua'
no file './luci/model/ipkg.so'
no file '/usr/lib/lua/luci/model/ipkg.so'
no file '/usr/lib/lua/loadall.so'
no file './luci.so'
no file '/usr/lib/lua/luci.so'
no file '/usr/lib/lua/loadall.so'

In error(), file [C]
called from function [anonymous function] (/usr/lib/lua/luci/ucodebridge.lua:23)
called from function ((tail call))
In [anonymous function](), file /usr/share/ucode/luci/runtime.uc, line 148, byte 45:
  called from function [arrow function] (/usr/share/ucode/luci/dispatcher.uc:813:4)
  called from function render ([C])
  called from function render_action (/usr/share/ucode/luci/dispatcher.uc:787:24)
  called from function run_action (/usr/share/ucode/luci/dispatcher.uc:814:4)
  called from function [anonymous function] (/usr/share/ucode/luci/dispatcher.uc:1027:48)
  called from anonymous function (/www/cgi-bin/luci:39:13)

 `        return lcall.call(modname, method, ...args);`
  Near here ----------------------------------------^
```

###### attempt to index local 'obj' (a nil value)

1. luci-app-istoreenhance <span id=failed-plugin-luci-app-istoreenhance></span>

```
/usr/lib/lua/luci/ucodebridge.lua:23: /usr/lib/lua/luci/model/istoreenhance.lua:13: attempt to index local 'obj' (a nil value)

In error(), file [C]
called from function [anonymous function] (/usr/lib/lua/luci/ucodebridge.lua:23)
called from function ((tail call))
In [anonymous function](), file /usr/share/ucode/luci/runtime.uc, line 148, byte 45:
  called from function [arrow function] (/usr/share/ucode/luci/dispatcher.uc:813:4)
  called from function render ([C])
  called from function render_action (/usr/share/ucode/luci/dispatcher.uc:787:24)
  called from function run_action (/usr/share/ucode/luci/dispatcher.uc:814:4)
  called from function [anonymous function] (/usr/share/ucode/luci/dispatcher.uc:1027:48)
  called from anonymous function (/www/cgi-bin/luci:39:13)

 `        return lcall.call(modname, method, ...args);`
  Near here ----------------------------------------^
```

2. luci-app-openthread <span id=failed-plugin-luci-app-openthread></span>

```
/usr/lib/lua/luci/ucodebridge.lua:23: /usr/lib/lua/luci/template.lua:181: Failed to execute template 'admin_thread/thread_overview'.
A runtime error occurred: [string "/usr/lib/lua/luci/view/admin_thread/thread_..."]:24: attempt to index a nil value
stack traceback:
[string "/usr/lib/lua/luci/view/admin_thread/thread_..."]:24: in main chunk

In error(), file [C]
called from function [anonymous function] (/usr/lib/lua/luci/ucodebridge.lua:23)
called from function ((tail call))
In [anonymous function](), file /usr/share/ucode/luci/runtime.uc, line 148, byte 45:
  called from function [arrow function] (/usr/share/ucode/luci/dispatcher.uc:800:71)
  called from function render ([C])
  called from function render_action (/usr/share/ucode/luci/dispatcher.uc:787:24)
  called from function run_action (/usr/share/ucode/luci/dispatcher.uc:801:5)
  called from function [anonymous function] (/usr/share/ucode/luci/dispatcher.uc:1027:48)
  called from anonymous function (/www/cgi-bin/luci:39:13)

 `        return lcall.call(modname, method, ...args);`
  Near here ----------------------------------------^
```

###### 其他

1. luci-app-nginx-manager <span id=failed-plugin-luci-app-nginx-manager></span>

```
/usr/lib/lua/luci/ucodebridge.lua:23: /usr/lib/lua/luci/template.lua:181: Failed to execute template 'cbi/map'.
A runtime error occurred: /usr/lib/lua/luci/template.lua:181: Failed to execute template 'nginx-manager/index'.
A runtime error occurred: /usr/lib/lua/luci/template.lua:93: Exception: /usr/lib/lua/luci/ucodebridge.lua:23: /usr/lib/lua/luci/template.lua:158: Failed to load template 'cbi/tabmenu'.
Error while parsing template '/usr/lib/lua/luci/view/cbi/tabmenu.htm':
No such file or directory

In error(), file [C]
called from function run (/usr/lib/lua/luci/ucodebridge.lua:23)
called from function [anonymous function] (/usr/lib/lua/luci/ucodebridge.lua:37)
called from function resume ([C])
called from function [anonymous function] (/usr/lib/lua/luci/ucodebridge.lua:20)
called from function ((tail call))

In [anonymous function](), file /usr/share/ucode/luci/runtime.uc, line 133, byte 10:
called from function [arrow function] (/usr/share/ucode/luci/runtime.uc:183:57)
called from function call ([C])
called from function [anonymous function] (/usr/share/ucode/luci/runtime.uc:148:45)
called from function [arrow function] (/usr/share/ucode/luci/dispatcher.uc:813:4)
called from function render ([C])
called from function render_action (/usr/share/ucode/luci/dispatcher.uc:787:24)
called from function run_action (/usr/share/ucode/luci/dispatcher.uc:814:4)
called from function [anonymous function] (/usr/share/ucode/luci/dispatcher.uc:1027:48)
called from anonymous function (/www/cgi-bin/luci:39:13)

` die(ex);`
Near here --------^

stack traceback:
[C]: in function 'include'
/usr/lib/lua/luci/template.lua:93: in function 'include'
[string "/usr/lib/lua/luci/view/nginx-manager/index...."]:1: in main chunk
stack traceback:
[C]: in function 'error'
/usr/lib/lua/luci/template.lua:181: in function
(tail call): ?
/usr/lib/lua/luci/cbi.lua:257: in function 'render'
/usr/lib/lua/luci/cbi.lua:266: in function 'render_children'
[string "/usr/lib/lua/luci/view/cbi/map.htm"]:6: in main chunk

In error(), file [C]
called from function [anonymous function] (/usr/lib/lua/luci/ucodebridge.lua:23)
called from function ((tail call))
In [anonymous function](), file /usr/share/ucode/luci/runtime.uc, line 148, byte 45:
  called from function [arrow function] (/usr/share/ucode/luci/dispatcher.uc:813:4)
  called from function render ([C])
  called from function render_action (/usr/share/ucode/luci/dispatcher.uc:787:24)
  called from function run_action (/usr/share/ucode/luci/dispatcher.uc:814:4)
  called from function [anonymous function] (/usr/share/ucode/luci/dispatcher.uc:1027:48)
  called from anonymous function (/www/cgi-bin/luci:39:13)

 `        return lcall.call(modname, method, ...args);`
  Near here ----------------------------------------^
```






