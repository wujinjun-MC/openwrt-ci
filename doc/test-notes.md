## worktree

### ax5jdc

#### Success

dogcom, droidmodem(不知道有什么用)
success  ---- luci: fwknopd, gost, guest-wifi, hd-idle
success  ---- luci: https-dns-proxy, ikoolproxy
success  ---- luci: internet-detector, iperf3-server, iptvhelper, irqbalance, istoreenhance, istorego
success  ---- [self-hosted] luci: lldpd, lxc, mac, mfun
success  ---- luci: microsocks， minidlna, mjpg-streamer, mosquitto
success  ---- [self-hosted-2] luci: msd_lite, my-dnshelper
success  ---- luci: natter2, netdata, netspeedtest
success  ---- [self-hosted] luci: nfs, nginx-manager, nlbwmon, npc, nps, frpc, frps
success  ---- luci: ngrokc, nut, olsr, olsr-services, olsr-viz
success  ---- [self-hosted-2] luci: openclash, openthread, openvpn, openvpn-client, openwisp
success  ---- [self-hosted] luci: ota, p910nd, packet-capture, pagekitec, partexp, passwall (defaults), pbr
success  ---- use installed ccache (create symlink)
success  ---- luci: poweroff, poweroffdevice, privoxy
success  ---- luci: pushbot, qbittorrent, qos, ramfree
success  ---- luci: rclone, rp-pppoe-server
success  ---- luci: rustdesk-server, ser2net
success  ---- luci: shutdown, smartdns(no WebUI), socat, softether, softethervpn
success  ---- luci: spotifyd, squid, sshtunnel, ssr-mudb-server, ssr-plus (defaults)
success  ---- luci: statistics, supervisord
success  ---- [self-hosted] luci: tailscale-community, taskplan, tcpdump, timecontrol, timewol, tinyfilemanager
success  ---- [self-hosted2] luci: tinyproxy, tor, travelmate, transmission, ua2f, udp2raw, udpxy, unblockmusic (UnblockNeteaseMusic Golang Version)
success  ---- luci: unbound
success  ---- luci: usteer, v2raya, vlmcsd, vnstat2, vsftpd
success  ---- [self-hosted] luci: watchcat, watchdog, webd (Disable: Include webd Binary), webdav, webviewdev
success  ---- [self-hosted2] luci: wechatpush (Enable all), wifischedule, wizard, wol, wolplus
success  ---- luci: wrtbwmon, xfrpc, xinetd
success  ---- [self-hosted] luci-app-zerotier, luci-themedog
success  ---- [self-hosted2] luci: chatgpt-web, clamav, ddns-go
success  ---- luci: kai, ksmbd, ledtrig-rssi, ledtrig-switch
success  ---- luci: lldpd, lxc, mac, mfun
success  ---- luci: msd_lite, my-dnshelper
success  ---- luci: nfs, nginx-manager, nlbwmon, npc, nps, frpc, frps
success  ---- [self-hosted] luci: openclash, openthread, openvpn, openvpn-client, openwisp
success  ---- [self-hosted2] luci: ota, p910nd, packet-capture, pagekitec, partexp, passwall (defaults), pbr
success  ---- luci-proto-pppossh, luci-proto-wireguard, luci-mod-dashboard, luci-mod-istorenext
success  ---- [self-hosted] luci-nginx, luci-base (disable Minify Javascript sources and Minify CSS files), luci-app-quickstart
success  ---- [self-hosted2] apk->opkg, luci-lib-ipkg, luci-nginx, luci-app-{alpha,argone,design}-config, luci-app-nginx-manager, all themes on
success  ---- luci-mod-dashboard, luci-mod-istorenext, luci-nginx, luci-app-nginx-manager, luci-app-quickstart
success  ---- apk->opkg, luci-lib-ipkg, luci-mod-dashboard, luci-mod-istorenext, luci-nginx, luci-app-nginx-manager, luci-app-quickstart
success  ---- luci: drawio, gogs, heimdall, homeassistant, **homeredirect** (previously PKG_VERSION invalid)
success  ---- luci: istorepanel, ittools, jackett, mymind, nastools, openwebui, owntone (previously PKG_VERSION invalid)
success  ---- [self-hosted] luci: penpot, rtbwmon, shortcutmenu, sunpanel, **systools** (with failed speedtestcli) (previously PKG_VERSION invalid)
success  ---- [self-hosted2]
```
Utilities:
-   all coreutils-*
```
success  ---- [self-hosted]
```
Utilities:
-   coap-client, colrm, cpulimit, cpupower, cpusage, dbus-utils, device-observatory, dmesg
```
success  ---- [self-hosted2]
```
luCI:
-   Applications:
--      luci-app-docker, luci-app-dockerman
Utilities:
-   docker, docker-compose, dockerd
```
success  ---- [self-hosted]
```
Utilities:
-   dos2unix, dropbearconvert, dtc (+ Build dtc as static binary), enterprise-numbers, eza, fastfetch, fdt-utils
```
success  ---- [self-hosted2]
```
Utilities:
-   file, findutils, flock, fuse-overlayfs, fx, gawk, gddrescue, getopt, gnuplot, grep, 
```
success  ---- [self-hosted] (failed: libnetconf2 (依赖 by netopeer2-cli, netopeer2-server), minisign (CMake 错误), netkeeper)
```
Utilities:
-   mmc-utils, more, moreutils, namei, nand-utils, naywatch, netspeedtest, nnn, nsenter, nss-utils, nssinfo, nsutils, oath-toolkit
```
success  ---- [self-hosted2]
```
Utilities:
-   openssl-util, owipcalc, owut, passh, pax-utils (+ build with support for seccomp), pciids, pciutils, pkgen
```
success  ---- [self-hosted2] (failed: sysrepo, sysrepocfg, sysrepoctl, supervisor)
```
Utilities:
-   sshpass, stdiscosrv, strace (defaults), strelaysrv, stress-ng, sysstat, tar, taskd, taskset, tini, tinyionice, tinymembench, tracertools, tree, ucode-mod-bpf
```
success  ---- [self-hosted]
```
Utilities:
-   udns-dnsget, udns-ex-rdns, udns-rblcheck, ufp, ufp-neigh, unix2dos, unshare, uuidd, uuidgen, watchcat, watchdog, whereis, which, whiptail, whois, wipe
```
success  ---- [self-hosted2]
```
Utilities:
-   qrencode, quota, rename, reptyr, rev, rhash, ripgrep, rlwrap, rng-tools, sed
```
success  ---- [self-hosted]
```
Network
-   BitTorrent
--      mktorrent, opentracker, qbittorrent-enhanced-edition, rtorrent-rpc
```
success  ---- luci: openclash, openthread, openvpn, openvpn-client, openwisp
success  ---- [self-hosted]
```
Network
-   Download Manager
--      ariang, ariang-nginx, leech, webui-aria2
```
success  ---- [self-hosted] (failed: onionshare-cli)
```
Network
-   File Transfer
--      aria2, atftp, atftpd, croc, curl, rclone, rclone-config, rrsync (requires Languages->Python->python3-light), rsync (+ Enable lz4, extremely fast compression, + Enable xxhash, extremely fast hash), rsyncd, transfer, unishare, vsftpd
-   LuCI
--      Applications
---         luci-app-rclone, luci-app-unishare, luci-app-vsftpd
```
success  ---- [self-hosted]
```
Network
-   Firewall
--      arptables-nft, conntrack, conntrackd, ip6tables-extra, ip6tables-mod-*, ip6tables-nft, iptables-mod-*, iptables-nft, iptaccount, iptasn, iptgeoip
```
success  ---- [self-hosted] luci: tailscale-community, taskplan, tcpdump, timecontrol, timewol, tinyfilemanager
success  ---- [self-hosted2] luci: tinyproxy, tor, travelmate, transmission, ua2f, udp2raw, udpxy, unblockmusic
success  ---- [self-hosted2] luci: watchcat, watchdog, webd (Disable: Include webd Binary), webdav, webviewdev
success  ---- [self-hosted] luci: wechatpush, wifischedule, wizard, wol, wolplus
success  ---- [self-hosted2] luci: chatgpt-web, clamav, ddns-go
success  ---- [self-hosted]
```
Network
-   NMAP Suite
--      ncat-full, ndiff, nmap-full, nping, nping-ssl
```
success  ---- [self-hosted]
```
Network
-   dnstap, dnstop, ds-lite, easytier, [M]ethtool, ethtool-full, fail2ban, fail2banop, fping, fsh, geoip-shell, geoipupdate
```
success  ---- [self-hosted]
```
Network
-   hping3, httping, i2pd, ifstat, iftop, iperf3, ipip
```
success  ---- (failed: tcpping)
```
Network
-   q, ratechecker, ratelimit, redsocks, remserial, scapy, smbinfo, spoofer, static-neighbor-reports, stunnel, tcping, tinyPortMapper, tmate-ssh-server, trafficshaper, udphp-client
```

#### Wait Download

wait-dl  ---- luci: typecho, unifi, unishare, uptimekuma, wan-mac, xteve, istoredup (with failed vmease) (previously PKG_VERSION invalid)
wait-dl  ----
```
Utilities:
        Shells:
                bash, zsh
        testing
    testing2
```
wait-dl  ----
```
Network:
    SSH:
        openssh-client, openssh-client-utils, openssh-server, openssh-sftp-client, openssh-sftp-server, tmate
Utilities:
    Terminal:
        tmux
```
wait-dl  ----
```
Utilities:
-   Compression:
--      7z, gzip, lz4, lzmainfo, pigz, unrar, unzip, zstd
-   Disc:
--      blkid, blockdev, cfdisk, cgdisk, fdisk, findfs, fio, fixparts, gdisk, hdparm, lsblk, sfdisk, sgdisk, wipefs
-   Editors:
--      hexedit, nano-full
```
wait-dl  ----
```
Utilities
-   Filesystem
--      afuse, badblocks, !btrfs-progs, chattr, dbugfs, fstrim, fuse3-utils, lf, lsattr, ncdu, [M]nfs-utils, nfs-utils-v4, resize2fs, squashfs-tools-{mk,un}squashfs, swap-utils, sysfsutils, tune2fs, 
```
wait-dl  ----
```
Utilities
-   Shells
--      bash, mksh, zsh
-   Terminal:
--      tmux, wall
-   Time Zone Info:
--      zoneinfo-asia, zoneinfo-core, zoneinfo-simple
-   Utilities:
--      sunwait
```
wait-dl  ----
```
Utilities:
-   ack, adb, arp-whisper, at, atheepmgr (+ Enable dangerous functions), autoupdate, base16384, bc, borgbackup(...), bsdiff, cal, cli, clocate
```
wait-dl  ----
```
Utilities:
-   hashdeep, haveged, hwclock, hwinfo, hwloc-utils, iconv, inotifywait, inotifywatch, io, iwcap, iwinfo, joker, jq-full, kmod, last
```
wait-dl  ----
```
Utilities:
-   i2c-tools, less, lm-sensors, lm-sensors-detect, logger, logrotate, lolcat, look, lscpu, lsd, lslocks, lsns, lsof, maccalc, macchanger, mandoc, mbtools, mc, mc-skins, mcookie, mhz, micrond, miniflux
```
wait-dl  ----
```
Utilities:
-   pnpids, powertop, prlimit, procps-ng, procps-ng3, procs, progress, provision, provision, pservice, psmisc, pv
```
wait-dl  ----
```
Utilities:
-   setserial, sexpect, shadow-utils (all in), shared-mime-info, cligen, sipcalc, sockread
```
wait-dl  ----
```
Utilities:
-   xxd, xxhash, yafut, yara, yq
```
wait-dl  ----
```
Network
-   Captive Portals
--      apfree-wifidog, nodogsplash, simple-captive-portal
```
wait-dl  ----
```
Network
-   Captive Portals
--      wifidog
```
wait-dl  ----
```
Network
-   Dial-in/up
--      rp-pppoe-common, rp-pppoe-relay, rp-pppoe-server, rp-pppoe-sniff
Luci
-   Application
--      luci-app-rp-pppoe-server
```
wait-dl  ----
```
Network
-   Filesystem
--      cifs, davfs2, ksmbd-avahi-service, ksmbd-hotplug, ksmbd-server, nfs-kernel-server-v4, nfs-kernel-server-utils, sshfs
```
wait-dl  ----
```
Network
-   Firewall
--      miniupnpc, miniupnpd, [M]miniupnpd-nftables, natpmpc, openappid, shorewall, shorewall6, snort3
```
wait-dl  ----
```
Network
-   IP Addresses and Names
--      aggregate, announce, avahi-autoipd, avahi-daemon-service-*, avahi-dbus-daemon, avahi-dnsconfd, avahi-utils, bin-server, bind-server-filter-aaaa, bind-tools, ddns-scripts (ddns-scripts-{cloudflare,noip})
```
oversize ---- Some luci-app-*, uhttpd -> nginx
wait-dl  ----
```
Network
-   Version Control Systems
--      git, git-http, git-lfs
-   Wireless
--      aircrack-ng (+ Optimize for speed (increase file size)), airmon-ng, wavemon
-   arp-scan
--      arp-scan, arp-scan-database
```
wait-dl  ----
```
Network
-   6in4, 6to4, UDPspeeder, antiblock
LuCI
-   Applications
--      luci-app-antiblock
```
wait-dl  ----
```
Network
-   bmon, bwm-ng, bwping, cdnspeedtest, darkstat, dnsforwarder
```
wait-dl  ----
```
Network
-   iputils-arping, iputils-clockdiff, iputils-ping (+ Install legacy ping4 and ping6 symlinks), iputils-tracepath (+ Install legacy tracepath4 and tracepath6 symlinks), irtt, iw-full
```
wait-dl  ----
```
Network
-   lynx, mac-telnet-*, map
```
wait-dl  ----
```
Network
-   net-tools-{netstat,route}, netcat, netdiscover, netifyd, netperf, netsniff-ng, noping
```
wait-dl  ----
```
Network
-   oping, pen, pingcheck, pppstats
```

#### Not sorted

nfound ----
```
Network
-   P2P
--      amule
```















## my-enabled

### ax5jdc

- deprecate:
    kooldns
    koolproxy
    ngrokc
    oscam

- selecting:
    - luCI:
        - Applications:
            - acl
            - advanced
            - arpbind
            - autoipsetadder 可选
            - autoreboot
            - banip
            - bcp38 可选
            - beardropper
            - cifs-mount
            - clamav 可选
            - cloudflared
            - cloudflarespeedtest
            - commands
            - control-timewol
            - control-webrestriction
            - control-weburl
            - cpufreq
            - cpulimit
            - ddns-go
            - dnsfilter 可选 (用 Adguard Home 替代?)
            - dnsmasq-ipset 可选
            - dnsproxy 可选
            - drawio, gogs, heimdall, homeassistant 可能占用很多
            - eqos
            - eqosplus
            - fastnet
            - fchomo
            - filemanager
            - frpc, frps 可选
            - fwknopd
            - gost 可选
            - homeredirect 可选
            - https-dns-proxy
            - internet-detector
            - iperf3-server
            - iptvhelper 可选
            - irqbalance
            - istorego 可选，需Docker
            - kai, ksmbd 可选
            - ledtrig-rssi
            - ledtrig-switch
            - lldpd
            - microsocks
            - minidlna, mosquitto, msd_lite 可选
            - my-dnshelper
            - natter2
            - netdata
            - netspeedtest
            - nfs 可选
            - nlbwmon
            - npc, nps, nut 可选
            - openclash
            - openvpn, openvpn-client 可选
            - openwisp
            - packet-capture
            - pagekitec
            - partexp
            - passwall2 (defaults)
            - pbr
            - poweroff
            - poweroffdevice
            - privoxy 可选
            - pushbot 可选
            - qbittorrent 初始内存占用低 ???
            - qos
            - ramfree
            - rclone
            - rtbwmon
            - rustdesk 可选
            - smartdns
            - socat
            - squid 可选
            - sshtunnel
            - statistics
            - sunpanel
            - supervisord
            - tailscale-community
            - taskplan
            - tcpdump
            - timecontrol
            - timewol
            - tinyfilemanager
            - tinyproxy
            - tor
            - travelmate
            - ua2f
            - udp2raw
            - udpxy
            - unblockmusic
            - unbound
            - usteer 可选，多AP需要
            - vlmcsd
            - vnstat2 可选，适合按时间统计
            - vsftpd 可选
            - wrtbwmon
            - xfrpc
            - xinetd
        - Others:
            - ...
    - Utilities:
        - BitTorrent
            - mktorrent 可选
            - opentracker 可选
            - qbittorrent-enhanced-edition
            - rtorrent-rpc
        - Download Manager
            - ariang
            - ariang-nginx
            - leech 可选
            - webui-aria2 可选
        - File Transfer
            - aria2
            - atftp, atftpd, croc 可选
            - curl, rclone, rclone-config
            - rrsync (requires Languages->Python->python3-light) 可选
            - rsync (+ Enable lz4, extremely fast compression, + Enable xxhash, extremely fast hash), rsyncd
            - transfer, unishare 可选
            - vsftpd
        - Firewall
            - arptables-nft, conntrack, conntrackd, ip6tables-extra, ip6tables-mod-*, ip6tables-nft, iptables-mod-*, iptables-nft, iptaccount, iptasn, iptgeoip
        - NMAP Suite
            - ncat-full, ndiff, nmap-full, nping, nping-ssl
        - Others:
            - colrm
            - coreutils 必须
            - cpulimit 必须
            - cpusage
            - dbus-utils
            - device-observatory 可选
            - dmesg 必须
            - docker, docker-compose, dockerd 可选
            - dos2unix
            - dropbearconvert 可选
            - eza
            - fastfetch 必须
            - file 必须
            - findutils 必须
            - flock
            - fuse-overlayfs 可选
            - fx
            - gawk
            - gddrescue, getopt, gnuplot 可选
            - grep 必须
            - mmc-utils
            - more 必须
            - moreutils 必须
            - namei, nnn 可选
            - nsenter
            - nss-utils
            - nssinfo
            - nsutils
            - oath-toolkit
            - openssl-util
            - owipcalc, owut 可选
            - passh, pax-utils (+ build with support for seccomp), pkgen 可选
            - qrencode, rename 可选
            - reptyr
            - rev
            - rhash
            - riggrep
            - rlwrap, rng-tools 可选
            - sed 必须

- pockets
    - 1 (retrying)
        - LuCI
            - Applications
                - acl, adguardhome, advanced, argon-config, arpbind, amule, antiblock, autoipsetadder, autoreboot, banip, beardropper, ~~cifs-mount~~, cloudflared, cloudflarespeedtest, commands, control-timewol(多选一1), control-webrestriction, control-weburl, cpufreq, cpulimit, ddns-go, eqos, eqosplus, fastnet, ~~fchomo~~, filemanager, firewall, ~~fwknopd~~, ~~gost~~, ~~https-dns-proxy~~, ~~internet-detector~~, iperf3-server, irqbalance, ~~kai~~, ~~ksmbd~~, ledtrig-rssi, ~~ledtrig-switch~~, lldpd, lucky, ~~microsocks~~, my-dnshelper, natter2, netdata, netspeedtest, nlbwmon, openclash, ~~openwisp~~, packet-capture, pagekitec, partexp, passwall2, pbr, poweroff, poweroffdevice, qbittorrent, qos, ramfree, ~~rclone~~, smartdns, socat, squid, sshtunnel, statistics, supervisord, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), timewol(多选一1), tinyfilemanager, ~~tinyproxy~~, tor, ~~travelmate~~, ttyd, ua2f, ~~udp2raw~~, ~~udpxy~~, unblockmusic, unbound, upnp, vlmcsd, vnstat2, wrtbwmon, xfrpc, xinetd
            - Others
                - luci-nginx, luci-mod-dashboard, luci-mod-network, luci-mod-status
    - 1.1 passed tested
        - LuCI
            - Applications
                - acl, adguardhome, advanced, argon-config, amule, antiblock, arpbind, autoipsetadder, autoreboot, banip, beardropper, cloudflared, cloudflarespeedtest
    - 1.2 passed tested
        - LuCI
            - Applications
                - commands, control-timewol(多选一1), control-webrestriction, control-weburl, cpufreq, cpulimit, ddns-go, eqos, eqosplus, fastnet, filemanager, firewall, iperf3-server, irqbalance, ledtrig-rssi
    - 1.3 passed too-large(100M) [2:1]
        - LuCI
            - Applications
                - lldpd, lucky, my-dnshelper, natter2, netdata, netspeedtest, nlbwmon, openclash, packet-capture, pagekitec, partexp, ~~passwall2~~, pbr, poweroff, poweroffdevice, qbittorrent, qos, ramfree, smartdns, socat, squid, sshtunnel
    - 1.3.1 [self-hosted] passed tested
        - LuCI
            - Applications
                - lldpd, lucky, my-dnshelper, natter2, netdata, netspeedtest, nlbwmon, openclash, packet-capture, pagekitec, partexp
    - 1.3.2 [2:2] passed skipped
        - LuCI
            - Applications
                - ~~passwall2~~, pbr, poweroff, poweroffdevice, qbittorrent, qos, ramfree, smartdns, socat, squid, sshtunnel
    - 1.3.3 [1:1] passed
        - LuCI
            - Applications
                - passwall2
    - 1.3.4 [1:2] passed
        - LuCI
            - Applications
                - rclone
    - 1.4 [self-hosted2] failed
        - LuCI
            - Applications
                - statistics, supervisord, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), timewol(多选一1), tinyfilemanager, tor, ttyd, ~~ua2f~~, unblockmusic, unbound, upnp, vlmcsd, vnstat2, wrtbwmon, xfrpc, xinetd
        - Errors:
            1. ua2f
            ```
            ERROR: unable to select packages:
              ua2f (no such package):
                  required by: luci-app-ua2f-26.028.32477~ec83425[ua2f]
            ```
    - 1.4.1 passed tested
        - LuCI
            - Applications
                - statistics, supervisord, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), timewol(多选一1), tinyfilemanager
    - 1.4.2 cancelled
        - LuCI
            - Applications
                - tor, ttyd, ua2f, unblockmusic, unbound, upnp, vlmcsd, vnstat2, wrtbwmon, xfrpc, xinetd
    - 1.4.3 [1:2] failed
        - LuCI
            - Applications
                - ua2f
    - 1.4.4 [2:2] passed
        - LuCI
            - Applications
                - tinyfilemanager
    - 1.5 [self-hosted] passed
        - LuCI
            - Applications
                - watchcat, watchdog, webd (- Include webd Binary), webdav, webviewdev, wechatpush (勾选全部附加项), wifischedule, wizard, wol, wolplus, zerotier
    
    - 2: shrinked from 1 - failed
        - `ipq60xx-ax5-jdc-6.12-20260205-more_items-1.config`
        - as modules: `ipq60xx-ax5-jdc-6.12-20260205-more_items-1-as-modules.config`
        - LuCI
            - Applications
                - acl, adguardhome, advanced, argon-config, amule, antiblock, arpbind, autoipsetadder, autoreboot, banip, beardropper, cloudflared, cloudflarespeedtest, commands, control-timewol(多选一1), control-webrestriction, control-weburl, cpufreq, cpulimit, ddns-go, eqos, eqosplus, fastnet, filemanager, firewall, iperf3-server, irqbalance, ledtrig-rssi, lldpd, lucky, my-dnshelper, natter2, netdata, ~~netspeedtest~~, nlbwmon, openclash, packet-capture, pagekitec, partexp, pbr, ~~poweroff~~, ~~poweroffdevice~~, qbittorrent, qos, ramfree, smartdns, socat, squid, ~~sshtunnel~~, statistics, supervisord, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), timewol(多选一1), tinyfilemanager, tor, ttyd, ~~ua2f~~, ~~unblockmusic~~, unbound, upnp, vlmcsd, vnstat2, watchcat, watchdog, webd (- Include webd Binary), ~~webdav~~(可选-), ~~webviewdev~~, ~~wechatpush (勾选全部附加项)~~, wifischedule, wizard, wol, wolplus, wrtbwmon, xfrpc, xinetd, zerotier
            - Collections
                - luci-nginx
            - Modules
                - luci-mod-dashboard
    - 2.1 - failed
        - `ipq60xx-ax5-jdc-6.12-20260205-more_items-1-tiny-1.config`
        - LuCI
            - Applications
                - acl, ~~adguardhome~~, advanced, argon-config, ~~amule~~, ~~antiblock~~, arpbind, ~~autoipsetadder~~, autoreboot, banip, beardropper, cloudflared, cloudflarespeedtest, commands, ~~control-timewol(多选一1)~~, control-webrestriction, control-weburl, cpufreq, cpulimit, ddns-go, eqos, eqosplus, fastnet, filemanager, firewall, iperf3-server, irqbalance, ledtrig-rssi, ~~lldpd~~, lucky, my-dnshelper, natter2, netdata, nlbwmon, openclash, packet-capture, pagekitec, partexp, pbr, qbittorrent, qos, ramfree, ~~smartdns~~, socat, squid, statistics, supervisord, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), ~~timewol(多选一1)~~, tinyfilemanager, ~~tor~~, ttyd, ~~unbound~~, upnp, ~~vlmcsd~~, vnstat2, ~~watchcat~~, ~~watchdog~~, webd (- Include webd Binary), ~~wifischedule~~, ~~wizard~~, ~~wol~~, ~~wolplus~~, wrtbwmon, ~~xfrpc~~, xinetd, zerotier
            - Collections
                - luci-nginx
            - Modules
                - luci-mod-dashboard
    - 2.2 - passed, tested
        - `ipq60xx-ax5-jdc-6.12-20260205-more_items-1-tiny-2.config`
        - LuCI
            - Applications
                - ~~acl~~, advanced, argon-config, arpbind, autoreboot, ~~banip~~, beardropper, cloudflared, cloudflarespeedtest, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, ddns-go, eqos, eqosplus, fastnet, filemanager, firewall, iperf3-server, irqbalance, ledtrig-rssi, lucky, my-dnshelper, natter2, netdata, nlbwmon, openclash, ~~packet-capture~~, pagekitec, partexp, pbr, qbittorrent, qos, ramfree, socat, ~~squid~~, statistics, supervisord, tailscale-community, taskplan, ~~tcpdump~~, timecontrol(多选一1), tinyfilemanager, ttyd, upnp, vnstat2, webd (- Include webd Binary), wrtbwmon, xinetd, ~~zerotier~~
            - Modules
                - luci-mod-dashboard
    - 2.3 - passed
        - `ipq60xx-ax5-jdc-6.12-20260205-more_items-1-tiny-3.config`
        - LuCI
            - Applications
                - advanced, argon-config, arpbind, autoreboot, beardropper, cloudflared, cloudflarespeedtest, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, ddns-go, eqos, eqosplus, fastnet, filemanager, firewall, iperf3-server, irqbalance, ledtrig-rssi, lucky, my-dnshelper, natter2, netdata, nlbwmon, ~~openclash~~, pagekitec, partexp, pbr, qbittorrent, qos, ramfree, socat, statistics, supervisord, tailscale-community, taskplan, timecontrol(多选一1), tinyfilemanager, ttyd, upnp, vnstat2, webd (- Include webd Binary), wrtbwmon, xinetd
            - Modules
                - luci-mod-dashboard
    
    - 3: from 2.2, remove samba4, re-add some [1:1] - passed
        - `ipq60xx-ax5-jdc-6.12-20260205-more_items-2.config`
        - LuCI
            -- Applications
                --- acl, advanced, argon-config, arpbind, autoreboot, banip, beardropper, cloudflared, cloudflarespeedtest, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, ~~ddns-go~~, eqos, eqosplus, fastnet, filemanager, firewall, iperf3-server, irqbalance, ledtrig-rssi, lucky, my-dnshelper, natter2, netdata, nlbwmon, openclash, pagekitec, partexp, pbr, qbittorrent, qos, ramfree, socat, statistics, supervisord, tailscale-community, taskplan, timecontrol(多选一1), tinyfilemanager, ttyd, upnp, vnstat2, webd (- Include webd Binary), wrtbwmon, xinetd
            -- Collections
                --- ~~luci-nginx~~ (未打开: 3, 3.1~3.3, 4. 4.1开始恢复)
            -- Modules
                --- luci-mod-dashboard
    - 3.1 [2:1] - passed ignored
        - LuCI
            -- Applications
                --- acl, advanced, argon-config, arpbind, autoreboot, banip, beardropper, cloudflared, cloudflarespeedtest, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, eqos, eqosplus, ~~fastnet~~, filemanager, firewall, iperf3-server, irqbalance, ledtrig-rssi, lucky, my-dnshelper, natter2, netdata, nlbwmon, openclash, pagekitec, partexp, pbr, qbittorrent, qos, ramfree, socat, statistics, supervisord, tailscale-community, taskplan, timecontrol(多选一1), tinyfilemanager, ttyd, upnp, vnstat2, webd (- Include webd Binary), wrtbwmon, xinetd
            -- Collections
                --- ~~luci-nginx~~
            -- Modules
                --- luci-mod-dashboard
    - 3.2 [1:2] - passed ignored
        - LuCI
            -- Applications
                --- acl, advanced, argon-config, arpbind, autoreboot, banip, beardropper, cloudflared, cloudflarespeedtest, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, eqos, eqosplus, filemanager, firewall, iperf3-server, irqbalance, ledtrig-rssi, lucky, my-dnshelper, natter2, netdata, nlbwmon, openclash, pagekitec, partexp, pbr, qbittorrent, qos, ramfree, socat, statistics, supervisord, ~~tailscale-community~~, taskplan, timecontrol(多选一1), tinyfilemanager, ttyd, upnp, vnstat2, webd (- Include webd Binary), wrtbwmon, xinetd
            -- Collections
                --- ~~luci-nginx~~
            -- Modules
                --- luci-mod-dashboard
    - 3.3 [2:2] - passed ignored
        - LuCI
            -- Applications
                --- acl, advanced, argon-config, arpbind, autoreboot, banip, ~~beardropper~~, cloudflared, cloudflarespeedtest, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, eqos, eqosplus, filemanager, firewall, iperf3-server, irqbalance, ledtrig-rssi, lucky, my-dnshelper, natter2, netdata, ~~nlbwmon~~, openclash, pagekitec, partexp, pbr, qbittorrent, qos, ramfree, socat, ~~statistics~~, supervisord, taskplan, timecontrol(多选一1), tinyfilemanager, ttyd, upnp, ~~vnstat2~~, webd (- Include webd Binary), ~~wrtbwmon~~, xinetd
            -- Collections
                --- ~~luci-nginx~~
            -- Modules
                --- luci-mod-dashboard
    
    - 4: from 3, remove some packages after several tests [1:1]
        - `ipq60xx-ax5-jdc-6.12-20260205-more_items-3.config`
        - LuCI
            -- Applications
                --- acl, advanced, argon-config, ~~arpbind~~, autoreboot, banip, beardropper, cloudflared, ~~cloudflarespeedtest~~, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, eqos, eqosplus, ~~fastnet~~, filemanager, firewall, iperf3-server, irqbalance, ledtrig-rssi, lucky, my-dnshelper, natter2, netdata, nlbwmon, openclash, ~~pagekitec~~, ~~partexp~~, pbr, qbittorrent, qos, ramfree, socat, statistics, ~~supervisord~~, tailscale-community, taskplan, timecontrol(多选一1), tinyfilemanager, ttyd, upnp, vnstat2, ~~webd (- Include webd Binary)~~, wrtbwmon, xinetd
            -- Collections
                --- ~~luci-nginx~~
            -- Modules
                --- luci-mod-dashboard
    - 4.1 [1:2] selected
        - `...-tiny-1...`
        - LuCI
            -- Applications
                --- acl, advanced, argon-config, autoreboot, banip, beardropper, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, eqos, eqosplus, filemanager, firewall, iperf3-server, irqbalance, ledtrig-rssi, lucky, my-dnshelper, natter2, netdata, nlbwmon, openclash, pbr, qbittorrent, qos, ramfree, socat, statistics, tailscale-community, taskplan, timecontrol(多选一1), tinyfilemanager, ttyd, upnp, vnstat2, wrtbwmon, xinetd
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
        - Others
            -- bash btop dmesg lsblk nano-full ncdu tmux
    - 4.2: 4.1 as modules [2:2]
        - `...-tiny-2...`
        - LuCI
            -- Applications
                --- acl, advanced, argon-config, autoreboot, banip, beardropper, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, eqos, eqosplus, filemanager, firewall, iperf3-server, irqbalance, ledtrig-rssi, lucky, my-dnshelper, natter2, netdata, nlbwmon, openclash, pbr, qbittorrent, qos, ramfree, socat, statistics, tailscale-community, taskplan, timecontrol(多选一1), tinyfilemanager, ttyd, upnp, vnstat2, wrtbwmon, xinetd
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
        - Others
            -- bash btop dmesg lsblk nano-full ncdu tmux
    - 4.3 [2:1]
        - `...-tiny-3...`
        - LuCI
            -- Applications
                --- acl, advanced, argon-config, autoreboot, banip, beardropper, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, eqos, eqosplus, filemanager, firewall, iperf3-server, irqbalance, ledtrig-rssi, lucky, my-dnshelper, natter2, netdata, nlbwmon, ~~openclash~~, pbr, qbittorrent, qos, ramfree, socat, statistics, tailscale-community, taskplan, timecontrol(多选一1), tinyfilemanager, ttyd, upnp, vnstat2, wrtbwmon, xinetd
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
        - Others
            -- bash btop dmesg lsblk nano-full ncdu tmux

    - 5 [1:1]: from 4.1, start nn6000 port, add more packages - failed (natmap)
        - ~~`ipq60xx-nn6000-6.12-test-1.config`~~ 5, 5.1~5.3 's configs are replaced by 6's
        - LuCI
            -- Applications
                --- acl, acme, adguardhome, advanced, amule, argon-config, aria2, autoreboot, autoipsetadder, banip, bcp38, beardropper, chrony, cifs-mount, clamav, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, diskman (+ Include mdadm), dnsfilter, dnsmasq-ipset, dnsproxy, docker, dockerman, dogcom, eqos, eqosplus, filemanager, firewall, frpc, frps, fwknopd, hd-idle, iperf3-server, irqbalance, ittools, ksmbd, ledtrig-rssi, ledtrig-switch, ledtrig-usbport, lldpd, lucky, lxc, microsocks, minidlna, msd_lite, my-dnshelper, natmap, natter2, ~~netdata~~ (安装 Docker 版本的，版本新，效果好), netspeedtest, nfs, nginx-manager, nlbwmon, onliner, openclash, packet-capture, passwall2 (+ Include Hysteria), pbr, privoxy, qbittorrent, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), ramfree, rclone, rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), ~~tinyfilemanager~~, tor, travelmate, ttyd, unbound, upnp, uptimekuma, usb3disable, vlmcsd, vnstat2, vsftpd, watchcat, webdav, wifischedule, wizard, wol, wolplus, wrtbwmon, xfrpc, xinetd
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Others
            -- bash btop dmesg lsblk nano-full ncdu tmux
    - 5.1 [1:1] - failed (natmap)
        - `...-tiny-1...`
        - LuCI
            -- Applications
                --- acl, acme, adguardhome, advanced, amule, argon-config, aria2, autoreboot, autoipsetadder, banip, bcp38, beardropper, chrony, cifs-mount, clamav, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, diskman (+ Include mdadm), dnsfilter, dnsmasq-ipset, dnsproxy, docker, dockerman, ~~dogcom~~, eqos, eqosplus, filemanager, firewall, frpc, frps, fwknopd, hd-idle, iperf3-server, irqbalance, ~~ittools~~, ksmbd, ledtrig-rssi, ledtrig-switch, ledtrig-usbport, lldpd, lucky, lxc, microsocks, minidlna, msd_lite, my-dnshelper, natmap, natter2, ~~netdata~~ (安装 Docker 版本的，版本新，效果好), netspeedtest, nfs, nginx-manager, nlbwmon, onliner, openclash, packet-capture, passwall2 (+ Include Hysteria), pbr, privoxy, qbittorrent, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), ramfree, rclone, rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), ~~tinyfilemanager~~, tor, travelmate, ttyd, unbound, upnp, ~~uptimekuma~~, usb3disable, vlmcsd, vnstat2, vsftpd, watchcat, webdav, wifischedule, wizard, wol, wolplus, wrtbwmon, xfrpc, xinetd
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Others
            -- bash btop dmesg lsblk nano-full ncdu tmux
    - 5.2 [1:2] - failed (natmap)
        - `...-tiny-2...`
        - LuCI
            -- Applications
                --- acl, acme, adguardhome, advanced, amule, argon-config, aria2, autoreboot, autoipsetadder, banip, bcp38, beardropper, chrony, cifs-mount, clamav, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, diskman (+ Include mdadm), dnsfilter, dnsmasq-ipset, dnsproxy, docker, dockerman, ~~dogcom~~, eqos, eqosplus, filemanager, firewall, frpc, frps, fwknopd, hd-idle, iperf3-server, irqbalance, ~~ittools~~, ksmbd, ledtrig-rssi, ledtrig-switch, ledtrig-usbport, lldpd, lucky, lxc, microsocks, minidlna, msd_lite, my-dnshelper, natmap, natter2, ~~netdata~~ (安装 Docker 版本的，版本新，效果好), netspeedtest, nfs, nginx-manager, nlbwmon, onliner, openclash, packet-capture, passwall2 (+ Include Hysteria), pbr, privoxy, qbittorrent, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), ramfree, rclone, rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), ~~tinyfilemanager~~, tor, travelmate, ttyd, unbound, upnp, ~~uptimekuma~~, usb3disable, vlmcsd, vnstat2, vsftpd, watchcat, webdav, wifischedule, wizard, wol, wolplus, wrtbwmon, xfrpc, xinetd
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Administration
            -- btop, gotop, htop, nload, sudo, syslog-ng
        - Development
            -- automake, diffutils, gcc, make, patch, perf, pkgconf, tmon
        - Kernel modules
            -- kmod-fs-autofs4, kmod-fs-cachefiles, kmod-fs-configfs, kmod-fs-squashfs, kmod-fs-udf
        - Utilities
            -- bash, dmesg, lsblk, nano-full, ncdu, tmux
    - 5.3 [2:1] - failed (natmap)
        - `...-tiny-3...`
        - LuCI
            -- Applications
                --- acl, acme, adguardhome, advanced, amule, argon-config, aria2, autoreboot, autoipsetadder, banip, bcp38, beardropper, chrony, cifs-mount, clamav, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, diskman (+ Include mdadm), dnsfilter, dnsmasq-ipset, dnsproxy, docker, dockerman, eqos, eqosplus, filemanager, firewall, frpc, frps, fwknopd, hd-idle, iperf3-server, irqbalance, ksmbd, ledtrig-rssi, ledtrig-switch, ledtrig-usbport, lldpd, lucky, lxc, microsocks, minidlna, msd_lite, my-dnshelper, natmap, natter2, netspeedtest, nfs, nginx-manager, nlbwmon, onliner, openclash, packet-capture, passwall2 (+ Include Hysteria), pbr, privoxy, qbittorrent, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), ramfree, rclone, rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), tor, travelmate, ttyd, unbound, upnp, usb3disable, vlmcsd, vnstat2, vsftpd, watchcat, webdav, wifischedule, wizard, wol, wolplus, wrtbwmon, xfrpc, xinetd
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Administration
            -- btop, gotop, htop, nload, sudo, syslog-ng
        - Development
            -- automake, diffutils, gcc, make, patch, perf, pkgconf, tmon
        - Kernel modules
            -- kmod-fs-autofs4, kmod-fs-cachefiles, kmod-fs-configfs, kmod-fs-squashfs, kmod-fs-udf
        - Multimedia
            -- ffmpeg, ffprobe, graphicsmagick, imagemagick
        - Network
            -- BitTorrent
                --- mktorrent, rtorrent, rtorrent-rpc
            -- Captive Portals
                --- apfree-wifidog, nodogsplash, simple-captive-portal, wifidog
        - Utilities
            -- bash, dmesg, lsblk, nano-full, ncdu, tmux

    - 6 [1:1]: from 5.3, remove failed package (natmap) - failed 1 (`wifidog` vs `apfree-wifidog`) - failed 2 (cannot boot)
        - `ipq60xx-nn6000-6.12-test-1.config`
        - LuCI
            -- Applications
                --- acl, acme, adguardhome, advanced, amule, argon-config, aria2, autoreboot, autoipsetadder, banip, bcp38, beardropper, chrony, cifs-mount, clamav, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, diskman (+ Include mdadm), dnsfilter, dnsmasq-ipset, dnsproxy, docker, dockerman, eqos, eqosplus, filemanager, firewall, frpc, frps, fwknopd, hd-idle, iperf3-server, irqbalance, ksmbd, ledtrig-rssi, ledtrig-switch, ledtrig-usbport, lldpd, lucky, lxc, microsocks, minidlna, msd_lite, my-dnshelper, ~~natmap~~, natter2, netspeedtest, nfs, nginx-manager, nlbwmon, onliner, openclash, packet-capture, passwall2 (+ Include Hysteria), pbr, privoxy, qbittorrent, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), ramfree, rclone, rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), tor, travelmate, ttyd, unbound, upnp, usb3disable, vlmcsd, vnstat2, vsftpd, watchcat, webdav, wifischedule, wizard, wol, wolplus, wrtbwmon, xfrpc, xinetd
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Administration
            -- btop, gotop, htop, nload, sudo, syslog-ng
        - Development
            -- automake, diffutils, gcc, make, patch, perf, pkgconf, tmon
        - Kernel modules
            -- kmod-fs-autofs4, kmod-fs-cachefiles, kmod-fs-configfs, kmod-fs-squashfs, kmod-fs-udf
        - Multimedia
            -- ffmpeg, ffprobe, graphicsmagick, imagemagick
        - Network
            -- BitTorrent
                --- mktorrent, opentracker, rtorrent, rtorrent-rpc
            -- Captive Portals
                --- apfree-wifidog, nodogsplash, simple-captive-portal
            -- Download Manager
                --- ariang, ariang-nginx, leech, webui-aria2
            -- File Transfer
                --- aria2, atftp, atftpd, croc, curl, rclone, rclone-config, rrsync (requires Languages->Python->python3-light), rsync (+ Enable lz4, extremely fast compression, + Enable xxhash, extremely fast hash), rsyncd, transfer, unishare, vsftpd
            -- Filesystem
                --- cifsmount, davfs2, ksmbd-avahi-service, ksmbd-hotplug, ksmbd-server, nfs-kernel-server-v4, nfs-kernel-server-utils, sshfs
            -- Firewall
                --- arptables-nft, conntrack, conntrackd, ebtables-nft, fwknop, ip6tables-extra, ip6tables-mod-fullconenat, ip6tables-mod-nat, ip6tables-nft, ip6tables-mod-account, iptables-mod-asn, iptables-mod-chaos, iptables-mod-checksum, iptables-mod-cluster, iptables-mod-condition, iptables-mod-conntrack-extra, iptables-mod-delude, iptables-mod-dhcpmac, iptables-mod-dnetmap, iptables-mod-extra, iptables-mod-filter, iptables-mod-fullconenat, iptables-mod-fuzzy, iptables-mod-geoip, iptables-mod-hashlimit, iptables-mod-iface, iptables-mod-ipmark, iptables-mod-ipopt, iptables-mod-ipp2p, iptables-mod-iprange, iptables-mod-ipsec, iptables-mod-ipv4options, iptables-mod-led, iptables-mod-length2, iptables-mod-logmark, iptables-mod-lscan, iptables-mod-lua, iptables-mod-nat-extra, iptables-mod-nflog, iptables-mod-nfqueue, iptables-mod-physdev, iptables-mod-proto, iptables-mod-psd, iptables-mod-quota2, iptables-mod-rpfilter, iptables-mod-rtpengine, iptables-mod-socket, iptables-mod-sysrq, iptables-mod-tarpit, iptables-mod-tee, iptables-mod-tproxy, iptables-mod-trace, iptables-mod-u32, iptables-nft, iptaccount, iptasn, iptgeoip, miniupnpc, miniupnpd, miniupnpd-nftables, natpmpc, openappid, shorewall, shorewall6, snort3
        - Utilities
            -- bash, dmesg, lsblk, nano-full, ncdu, tmux
    - 6.1 [1:1] - failed 1 (`wifidog` vs `apfree-wifidog`) - cancelled
        - `...-more-1...`
        - LuCI
            -- Applications
                --- acl, acme, adguardhome, advanced, amule, antiblock, argon-config, aria2, autoreboot, autoipsetadder, banip, bcp38, beardropper, chrony, cifs-mount, clamav, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, diskman (+ Include mdadm), dnsfilter, dnsmasq-ipset, dnsproxy, docker, dockerman, eqos, eqosplus, fchomo, filemanager, firewall, frpc, frps, fwknopd, hd-idle, internet-detector, iperf3-server, irqbalance, ksmbd, ledtrig-rssi, ledtrig-switch, ledtrig-usbport, lldpd, lucky, lxc, microsocks, minidlna, msd_lite, my-dnshelper, ~~natmap~~, natter2, netspeedtest, nfs, nginx-manager, nlbwmon, onliner, openclash, packet-capture, passwall2 (+ Include Hysteria), pbr, privoxy, qbittorrent, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), ramfree, rclone, rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), tor, travelmate, ttyd, unbound, upnp, usb3disable, vlmcsd, vnstat2, vsftpd, watchcat, webdav, wifischedule, wizard, wol, wolplus, wrtbwmon, xfrpc, xinetd
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Administration
            -- btop, gotop, htop, nload, sudo, syslog-ng
        - Development
            -- automake, diffutils, gcc, make, patch, perf, pkgconf, tmon
        - Kernel modules
            -- kmod-fs-autofs4, kmod-fs-cachefiles, kmod-fs-configfs, kmod-fs-squashfs, kmod-fs-udf
        - Multimedia
            -- ffmpeg, ffprobe, graphicsmagick, imagemagick
        - Network
            -- BitTorrent
                --- mktorrent, opentracker, rtorrent, rtorrent-rpc
            -- Captive Portals
                --- apfree-wifidog, nodogsplash, simple-captive-portal
            -- Download Manager
                --- ariang, ariang-nginx, leech, webui-aria2
            -- File Transfer
                --- aria2, atftp, atftpd, croc, curl, rclone, rclone-config, rrsync (requires Languages->Python->python3-light), rsync (+ Enable lz4, extremely fast compression, + Enable xxhash, extremely fast hash), rsyncd, transfer, unishare, vsftpd
            -- Filesystem
                --- cifsmount, davfs2, ksmbd-avahi-service, ksmbd-hotplug, ksmbd-server, nfs-kernel-server-v4, nfs-kernel-server-utils, sshfs
            -- Firewall
                --- arptables-nft, conntrack, conntrackd, ebtables-nft, fwknop, ip6tables-extra, ip6tables-mod-fullconenat, ip6tables-mod-nat, ip6tables-nft, ip6tables-mod-account, iptables-mod-asn, iptables-mod-chaos, iptables-mod-checksum, iptables-mod-cluster, iptables-mod-condition, iptables-mod-conntrack-extra, iptables-mod-delude, iptables-mod-dhcpmac, iptables-mod-dnetmap, iptables-mod-extra, iptables-mod-filter, iptables-mod-fullconenat, iptables-mod-fuzzy, iptables-mod-geoip, iptables-mod-hashlimit, iptables-mod-iface, iptables-mod-ipmark, iptables-mod-ipopt, iptables-mod-ipp2p, iptables-mod-iprange, iptables-mod-ipsec, iptables-mod-ipv4options, iptables-mod-led, iptables-mod-length2, iptables-mod-logmark, iptables-mod-lscan, iptables-mod-lua, iptables-mod-nat-extra, iptables-mod-nflog, iptables-mod-nfqueue, iptables-mod-physdev, iptables-mod-proto, iptables-mod-psd, iptables-mod-quota2, iptables-mod-rpfilter, iptables-mod-rtpengine, iptables-mod-socket, iptables-mod-sysrq, iptables-mod-tarpit, iptables-mod-tee, iptables-mod-tproxy, iptables-mod-trace, iptables-mod-u32, iptables-nft, iptaccount, iptasn, iptgeoip, miniupnpc, miniupnpd, miniupnpd-nftables, natpmpc, openappid, shorewall, shorewall6, snort3
            -- IP Addresses and Names
                --- aggregate, announce, avahi-autoipd, avahi-daemon-service-http, avahi-daemon-service-ssh, avahi-dbus-daemon, avahi-dnsconfd, avahi-utils, bin-server, bind-server-filter-aaaa, bind-tools, ddns-scripts, ddns-scripts-cloudflare, ddns-scripts-noip, ddns-scripts-utils, dhtd, dns-over-https, dns2socks, dns2tcp, dnsdist-full, dnslookup, kadnode, mdns-utils, mdnsd, mdnsresponder
            -- NMAP Suite
                --- ncat-full, ndiff, nmap-full, nping, nping-ssl
            -- Open vSwitch
                --- openvswitch, openvswitch-python3
            -- Routing and Redirection
                --- tc-full
            -- SSH
                --- autossh, mosh-full, openssh-client, openssh-client-utils, openssh-server, openssh-sftp-avahi-service, openssh-sftp-client, openssh-sftp-server, sshtunnel, tmate
            -- Version Control Systems
                --- git, git-gitweb, git-http, git-lfs
            -- Web Servers/Proxies
                --- nginx-full
            -- Wireless
                --- aircrack-ng (+ Optimize for speed, Hwloc support, Sqlite3 support), airmon-ng, wavemon
            -- arp-scan
                --- arp-scan, arp-scan-database
            -- Others
                --- 6in4, 6to4, UDPspeeder, antiblock, bmon, bpfcountd, bpftool-full, bwm-ng (+ enable configfile support, enable html output, enable csv output, enable libncurses support, enable long options), bwping, cdnspeedtest, chat, coap-server, conserver-ipmi, darkstat, dnsforwarder, dnstap, dnstop, docker-lan-bridge, ds-lite, easytier, etherwake-nfqueue, ethtool-full, fail2ban, fail2banop, fping, fsh, geoip-shell, geoipupdate, gnunet, go-nats, gre, gsocket, homebox, hping3, i2pd, ifstat, iftop, iiod, internet-detector, ipip, ipset, ipset-dns, ipset-lists, ipt2socks, iptraf-ng, iputils-arping, iputils-clockdiff, iputils-ping (+ Install legacy ping4 and ping6 symlinks), iputils-tracepath (+ Install legacy tracepath4 and tracepath6 symlinks), ipvsadm, irtt, iw-full, lynx, map, memcached, mtr-json, nbd, nbd-server, ncp, net-tools-netstat, net-tools-route, netavark, netcat, netdiscover, netperf, netsniff-ng, nexttrace, noping, nut, nut-server, nut-upsc, nut-upscmd, nut-upslog, nut-upsrw, nut-upssched, nut-web-cgi, oping, pagekitec, pcapplusplus, pingcheck, pppstats, proto-bonding, q, ratechecker, ratelimit, respondd, smbinfo, spoofer, tcpping, trafficshaper, u2pnpd, usbip, usbip-client, usbip-server, wakeonlan
        - Utilities
            -- bash, dmesg, lsblk, nano-full, ncdu, tmux
    - 6.2 [2:1] - cancelled - remove conflicts (conflict: `nodogsplash` and `gnunet`, select `gnunet`), and failed packages (bwm-ng, tcpping)
        - `...-more-2...`
        - LuCI
            -- Applications
                --- acl, acme, adguardhome, advanced, amule, antiblock, argon-config, aria2, autoreboot, autoipsetadder, banip, bcp38, beardropper, chrony, cifs-mount, clamav, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, diskman (+ Include mdadm), dnsfilter, dnsmasq-ipset, dnsproxy, docker, dockerman, eqos, eqosplus, fchomo, filemanager, firewall, frpc, frps, fwknopd, hd-idle, internet-detector, iperf3-server, irqbalance, ksmbd, ledtrig-rssi, ledtrig-switch, ledtrig-usbport, lldpd, lucky, lxc, microsocks, minidlna, msd_lite, my-dnshelper, ~~natmap~~, natter2, netspeedtest, nfs, nginx-manager, nlbwmon, onliner, openclash, packet-capture, passwall2 (+ Include Hysteria), pbr, privoxy, qbittorrent, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), ramfree, rclone, rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), tor, travelmate, ttyd, unbound, upnp, usb3disable, vlmcsd, vnstat2, vsftpd, watchcat, webdav, wifischedule, wizard, wol, wolplus, wrtbwmon, xfrpc, xinetd
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Administration
            -- btop, gotop, htop, nload, sudo, syslog-ng
        - Development
            -- automake, diffutils, gcc, make, patch, perf, pkgconf, tmon
        - Kernel modules
            -- kmod-fs-autofs4, kmod-fs-cachefiles, kmod-fs-configfs, kmod-fs-squashfs, kmod-fs-udf
        - Multimedia
            -- ffmpeg, ffprobe, graphicsmagick, imagemagick
        - Network
            -- BitTorrent
                --- mktorrent, opentracker, rtorrent, rtorrent-rpc
            -- Captive Portals
                --- apfree-wifidog, simple-captive-portal
            -- Download Manager
                --- ariang, ariang-nginx, leech, webui-aria2
            -- File Transfer
                --- aria2, atftp, atftpd, croc, curl, rclone, rclone-config, rrsync (requires Languages->Python->python3-light), rsync (+ Enable lz4, extremely fast compression, + Enable xxhash, extremely fast hash), rsyncd, transfer, unishare, vsftpd
            -- Filesystem
                --- cifsmount, davfs2, ksmbd-avahi-service, ksmbd-hotplug, ksmbd-server, nfs-kernel-server-v4, nfs-kernel-server-utils, sshfs
            -- Firewall
                --- arptables-nft, conntrack, conntrackd, ebtables-nft, fwknop, ip6tables-extra, ip6tables-mod-fullconenat, ip6tables-mod-nat, ip6tables-nft, ip6tables-mod-account, iptables-mod-asn, iptables-mod-chaos, iptables-mod-checksum, iptables-mod-cluster, iptables-mod-condition, iptables-mod-conntrack-extra, iptables-mod-delude, iptables-mod-dhcpmac, iptables-mod-dnetmap, iptables-mod-extra, iptables-mod-filter, iptables-mod-fullconenat, iptables-mod-fuzzy, iptables-mod-geoip, iptables-mod-hashlimit, iptables-mod-iface, iptables-mod-ipmark, iptables-mod-ipopt, iptables-mod-ipp2p, iptables-mod-iprange, iptables-mod-ipsec, iptables-mod-ipv4options, iptables-mod-led, iptables-mod-length2, iptables-mod-logmark, iptables-mod-lscan, iptables-mod-lua, iptables-mod-nat-extra, iptables-mod-nflog, iptables-mod-nfqueue, iptables-mod-physdev, iptables-mod-proto, iptables-mod-psd, iptables-mod-quota2, iptables-mod-rpfilter, iptables-mod-rtpengine, iptables-mod-socket, iptables-mod-sysrq, iptables-mod-tarpit, iptables-mod-tee, iptables-mod-tproxy, iptables-mod-trace, iptables-mod-u32, iptables-nft, iptaccount, iptasn, iptgeoip, miniupnpc, miniupnpd, miniupnpd-nftables, natpmpc, openappid, shorewall, shorewall6, snort3
            -- IP Addresses and Names
                --- aggregate, announce, avahi-autoipd, avahi-daemon-service-http, avahi-daemon-service-ssh, avahi-dbus-daemon, avahi-dnsconfd, avahi-utils, bin-server, bind-server-filter-aaaa, bind-tools, ddns-scripts, ddns-scripts-cloudflare, ddns-scripts-noip, ddns-scripts-utils, dhtd, dns-over-https, dns2socks, dns2tcp, dnsdist-full, dnslookup, kadnode, mdns-utils, mdnsd, mdnsresponder
            -- NMAP Suite
                --- ncat-full, ndiff, nmap-full, nping, nping-ssl
            -- Open vSwitch
                --- openvswitch, openvswitch-python3
            -- Routing and Redirection
                --- tc-full
            -- SSH
                --- autossh, mosh-full, openssh-client, openssh-client-utils, openssh-server, openssh-sftp-avahi-service, openssh-sftp-client, openssh-sftp-server, sshtunnel, tmate
            -- Version Control Systems
                --- git, git-gitweb, git-http, git-lfs
            -- Web Servers/Proxies
                --- nginx-full
            -- Wireless
                --- aircrack-ng (+ Optimize for speed, Hwloc support, Sqlite3 support), airmon-ng, wavemon
            -- arp-scan
                --- arp-scan, arp-scan-database
            -- Others
                --- 6in4, 6to4, UDPspeeder, antiblock, bmon, bpfcountd, bpftool-full, ~~bwm-ng (+ enable configfile support, enable html output, enable csv output, enable libncurses support, enable long options)~~, bwping, cdnspeedtest, chat, coap-server, conserver-ipmi, darkstat, dnsforwarder, dnstap, dnstop, docker-lan-bridge, ds-lite, easytier, etherwake-nfqueue, ethtool-full, fail2ban, fail2banop, fping, fsh, geoip-shell, geoipupdate, gnunet, go-nats, gre, gsocket, homebox, hping3, i2pd, ifstat, iftop, iiod, internet-detector, ipip, ipset, ipset-dns, ipset-lists, ipt2socks, iptraf-ng, iputils-arping, iputils-clockdiff, iputils-ping (+ Install legacy ping4 and ping6 symlinks), iputils-tracepath (+ Install legacy tracepath4 and tracepath6 symlinks), ipvsadm, irtt, iw-full, lynx, map, memcached, mtr-json, nbd, nbd-server, ncp, net-tools-netstat, net-tools-route, netavark, netcat, netdiscover, netperf, netsniff-ng, nexttrace, noping, nut, nut-server, nut-upsc, nut-upscmd, nut-upslog, nut-upsrw, nut-upssched, nut-web-cgi, oping, pagekitec, pcapplusplus, pingcheck, pppstats, proto-bonding, q, ratechecker, ratelimit, respondd, smbinfo, spoofer, ~~tcpping~~, trafficshaper, u2pnpd, usbip, usbip-client, usbip-server, wakeonlan
        - Utilities
            -- Compression
                --- 7z, gzip, lz4, lzmainfo, pigz, unrar, zipcmp, zipmerge, ziptool, zstd
            -- Others
                --- bash, dmesg, lsblk, nano-full, ncdu, tmux
    - 6.2.1 [1:1] - passed tested
        - `...-more-2-split-1...`
        - LuCI
            -- Applications
                --- acl, acme, adguardhome, advanced, amule, antiblock, argon-config, aria2, autoreboot, autoipsetadder, banip, bcp38, beardropper, chrony, cifs-mount, clamav, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, diskman (+ Include mdadm), dnsfilter, dnsmasq-ipset, dnsproxy, docker, dockerman, eqos, eqosplus, fchomo, filemanager, firewall, frpc, frps, fwknopd, hd-idle, internet-detector
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
    - 6.2.2 [1:2] - passed test-failed
        - `...-more-2-split-2...`
        - LuCI
            -- Applications
                --- iperf3-server, irqbalance, ksmbd, ledtrig-rssi, ledtrig-switch, ledtrig-usbport, lldpd, lucky, lxc, microsocks, minidlna, msd_lite, my-dnshelper, ~~natmap~~, natter2, netspeedtest, nfs, nginx-manager, nlbwmon, onliner, openclash, packet-capture, passwall2 (+ Include Hysteria), pbr, privoxy, qbittorrent, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), ramfree, rclone, rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), tor, travelmate, ttyd, unbound, upnp, usb3disable, vlmcsd, vnstat2, vsftpd, watchcat, webdav, wifischedule, wizard, wol, wolplus, wrtbwmon, xfrpc, xinetd
            -- Collections
                --- ~~luci-nginx~~
            -- Modules
                --- ~~luci-mod-dashboard~~
                --- ~~luci-mod-istorenext~~
            -- Protocols
                --- ~~luci-proto-wireguard~~
            -- Libraries
                --- ~~luci-lib-ipkg~~
                --- ~~luci-lib-json~~
        - Administration
            -- btop, gotop, htop, nload, sudo, syslog-ng
        - Development
            -- automake, diffutils, gcc, make, patch, perf, pkgconf, tmon
        - Kernel modules
            -- kmod-fs-autofs4, kmod-fs-cachefiles, kmod-fs-configfs, kmod-fs-squashfs, kmod-fs-udf
        - Multimedia
            -- ffmpeg, ffprobe, graphicsmagick, imagemagick
        - Network
            -- BitTorrent
                --- mktorrent, opentracker, rtorrent, rtorrent-rpc
            -- Captive Portals
                --- apfree-wifidog, nodogsplash, simple-captive-portal
    - 6.2.2.1 [1:2] - passed tested
        - `...-more-2-split-2-1...`
        - LuCI
            -- Applications
                --- iperf3-server, irqbalance, ksmbd, ledtrig-rssi, ledtrig-switch, ledtrig-usbport, lldpd, lucky, lxc, microsocks, minidlna, msd_lite, my-dnshelper, ~~natmap~~, natter2, netspeedtest, nfs, nginx-manager, nlbwmon, onliner, openclash, packet-capture, passwall2 (+ Include Hysteria), pbr, privoxy, qbittorrent, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), ramfree, rclone, rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), tor, travelmate, ttyd, unbound, upnp, usb3disable, vlmcsd, vnstat2, vsftpd, watchcat, webdav, wifischedule, wizard, wol, wolplus, wrtbwmon, xfrpc, xinetd
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
    - 6.2.2.2 [2:1] - passed tested
        - `...-more-2-split-2-2...`
        - LuCI
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Administration
            -- btop, gotop, htop, nload, sudo, syslog-ng
        - Development
            -- automake, diffutils, gcc, make, patch, perf, pkgconf, tmon
        - Kernel modules
            -- kmod-fs-autofs4, kmod-fs-cachefiles, kmod-fs-configfs, kmod-fs-squashfs, kmod-fs-udf
        - Multimedia
            -- ffmpeg, ffprobe, graphicsmagick, imagemagick
        - Network
            -- BitTorrent
                --- mktorrent, opentracker, rtorrent, rtorrent-rpc
            -- Captive Portals
                --- apfree-wifidog, nodogsplash, simple-captive-portal
    - 6.2.3 [2:1] - passed tested
        - `...-more-2-split-3...`
        - Network
            -- Download Manager
                --- ariang, ariang-nginx, leech, webui-aria2
            -- File Transfer
                --- aria2, atftp, atftpd, croc, curl, rclone, rclone-config, rrsync (requires Languages->Python->python3-light), rsync (+ Enable lz4, extremely fast compression, + Enable xxhash, extremely fast hash), rsyncd, transfer, unishare, vsftpd
            -- Filesystem
                --- cifsmount, davfs2, ksmbd-avahi-service, ksmbd-hotplug, ksmbd-server, nfs-kernel-server-v4, nfs-kernel-server-utils, sshfs
            -- Firewall
                --- arptables-nft, conntrack, conntrackd, ebtables-nft, fwknop, ip6tables-extra, ip6tables-mod-fullconenat, ip6tables-mod-nat, ip6tables-nft, ip6tables-mod-account, iptables-mod-asn, iptables-mod-chaos, iptables-mod-checksum, iptables-mod-cluster, iptables-mod-condition, iptables-mod-conntrack-extra, iptables-mod-delude, iptables-mod-dhcpmac, iptables-mod-dnetmap, iptables-mod-extra, iptables-mod-filter, iptables-mod-fullconenat, iptables-mod-fuzzy, iptables-mod-geoip, iptables-mod-hashlimit, iptables-mod-iface, iptables-mod-ipmark, iptables-mod-ipopt, iptables-mod-ipp2p, iptables-mod-iprange, iptables-mod-ipsec, iptables-mod-ipv4options, iptables-mod-led, iptables-mod-length2, iptables-mod-logmark, iptables-mod-lscan, iptables-mod-lua, iptables-mod-nat-extra, iptables-mod-nflog, iptables-mod-nfqueue, iptables-mod-physdev, iptables-mod-proto, iptables-mod-psd, iptables-mod-quota2, iptables-mod-rpfilter, iptables-mod-rtpengine, iptables-mod-socket, iptables-mod-sysrq, iptables-mod-tarpit, iptables-mod-tee, iptables-mod-tproxy, iptables-mod-trace, iptables-mod-u32, iptables-nft, iptaccount, iptasn, iptgeoip, miniupnpc, miniupnpd, miniupnpd-nftables, natpmpc, openappid, shorewall, shorewall6, snort3
    - 6.2.4 [2:2] - failed 1 (bwm-ng) - failed 2 (tcpping) - passed tested
        - `...-more-2-split-4...`
        - Network
            -- IP Addresses and Names
                --- aggregate, announce, avahi-autoipd, avahi-daemon-service-http, avahi-daemon-service-ssh, avahi-dbus-daemon, avahi-dnsconfd, avahi-utils, bin-server, bind-server-filter-aaaa, bind-tools, ddns-scripts, ddns-scripts-cloudflare, ddns-scripts-noip, ddns-scripts-utils, dhtd, dns-over-https, dns2socks, dns2tcp, dnsdist-full, dnslookup, kadnode, mdns-utils, mdnsd, mdnsresponder
            -- NMAP Suite
                --- ncat-full, ndiff, nmap-full, nping, nping-ssl
            -- Open vSwitch
                --- openvswitch, openvswitch-python3
            -- Routing and Redirection
                --- tc-full
            -- SSH
                --- autossh, mosh-full, openssh-client, openssh-client-utils, openssh-server, openssh-sftp-avahi-service, openssh-sftp-client, openssh-sftp-server, sshtunnel, tmate
            -- Version Control Systems
                --- git, git-gitweb, git-http, git-lfs
            -- Web Servers/Proxies
                --- nginx-full
            -- Wireless
                --- aircrack-ng (+ Optimize for speed, Hwloc support, Sqlite3 support), airmon-ng, wavemon
            -- arp-scan
                --- arp-scan, arp-scan-database
            -- Others
                --- 6in4, 6to4, UDPspeeder, antiblock, bmon, bpfcountd, bpftool-full, ~~bwm-ng (+ enable configfile support, enable html output, enable csv output, enable libncurses support, enable long options)~~, bwping, cdnspeedtest, chat, coap-server, conserver-ipmi, darkstat, dnsforwarder, dnstap, dnstop, docker-lan-bridge, ds-lite, easytier, etherwake-nfqueue, ethtool-full, fail2ban, fail2banop, fping, fsh, geoip-shell, geoipupdate, gnunet, go-nats, gre, gsocket, homebox, hping3, i2pd, ifstat, iftop, iiod, internet-detector, ipip, ipset, ipset-dns, ipset-lists, ipt2socks, iptraf-ng, iputils-arping, iputils-clockdiff, iputils-ping (+ Install legacy ping4 and ping6 symlinks), iputils-tracepath (+ Install legacy tracepath4 and tracepath6 symlinks), ipvsadm, irtt, iw-full, lynx, map, memcached, mtr-json, nbd, nbd-server, ncp, net-tools-netstat, net-tools-route, netavark, netcat, netdiscover, netperf, netsniff-ng, nexttrace, noping, nut, nut-server, nut-upsc, nut-upscmd, nut-upslog, nut-upsrw, nut-upssched, nut-web-cgi, oping, pagekitec, pcapplusplus, pingcheck, pppstats, proto-bonding, q, ratechecker, ratelimit, respondd, smbinfo, spoofer, ~~tcpping~~, trafficshaper, u2pnpd, usbip, usbip-client, usbip-server, wakeonlan
        - Utilities
            -- Compression
                --- 7z, gzip, lz4, lzmainfo, pigz, unrar, zipcmp, zipmerge, ziptool, zstd
            -- Others
                --- bash, dmesg, lsblk, nano-full, ncdu, tmux
    - 6.2.5 [1:1]: 6.2.1 and 6.2.3 - passed tested
        - `...-more-2-split-5...`
        - LuCI
            -- Applications
                --- acl, acme, adguardhome, advanced, amule, antiblock, argon-config, aria2, autoreboot, autoipsetadder, banip, bcp38, beardropper, chrony, cifs-mount, clamav, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, diskman (+ Include mdadm), dnsfilter, dnsmasq-ipset, dnsproxy, docker, dockerman, eqos, eqosplus, fchomo, filemanager, firewall, frpc, frps, fwknopd, hd-idle, internet-detector
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Network
            -- Download Manager
                --- ariang, ariang-nginx, leech, webui-aria2
            -- File Transfer
                --- aria2, atftp, atftpd, croc, curl, rclone, rclone-config, rrsync (requires Languages->Python->python3-light), rsync (+ Enable lz4, extremely fast compression, + Enable xxhash, extremely fast hash), rsyncd, transfer, unishare, vsftpd
            -- Filesystem
                --- cifsmount, davfs2, ksmbd-avahi-service, ksmbd-hotplug, ksmbd-server, nfs-kernel-server-v4, nfs-kernel-server-utils, sshfs
            -- Firewall
                --- arptables-nft, conntrack, conntrackd, ebtables-nft, fwknop, ip6tables-extra, ip6tables-mod-fullconenat, ip6tables-mod-nat, ip6tables-nft, ip6tables-mod-account, iptables-mod-asn, iptables-mod-chaos, iptables-mod-checksum, iptables-mod-cluster, iptables-mod-condition, iptables-mod-conntrack-extra, iptables-mod-delude, iptables-mod-dhcpmac, iptables-mod-dnetmap, iptables-mod-extra, iptables-mod-filter, iptables-mod-fullconenat, iptables-mod-fuzzy, iptables-mod-geoip, iptables-mod-hashlimit, iptables-mod-iface, iptables-mod-ipmark, iptables-mod-ipopt, iptables-mod-ipp2p, iptables-mod-iprange, iptables-mod-ipsec, iptables-mod-ipv4options, iptables-mod-led, iptables-mod-length2, iptables-mod-logmark, iptables-mod-lscan, iptables-mod-lua, iptables-mod-nat-extra, iptables-mod-nflog, iptables-mod-nfqueue, iptables-mod-physdev, iptables-mod-proto, iptables-mod-psd, iptables-mod-quota2, iptables-mod-rpfilter, iptables-mod-rtpengine, iptables-mod-socket, iptables-mod-sysrq, iptables-mod-tarpit, iptables-mod-tee, iptables-mod-tproxy, iptables-mod-trace, iptables-mod-u32, iptables-nft, iptaccount, iptasn, iptgeoip, miniupnpc, miniupnpd, miniupnpd-nftables, natpmpc, openappid, shorewall, shorewall6, snort3
    - 6.2.6 [2:1]: 6.2.1 and 6.2.2 and 6.2.3 without lxc - passed test-failed
        - `...-more-2-split-6...`
        - LuCI
            -- Applications
                --- acl, acme, adguardhome, advanced, amule, antiblock, argon-config, aria2, autoreboot, autoipsetadder, banip, bcp38, beardropper, chrony, cifs-mount, clamav, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, diskman (+ Include mdadm), dnsfilter, dnsmasq-ipset, dnsproxy, docker, dockerman, eqos, eqosplus, fchomo, filemanager, firewall, frpc, frps, fwknopd, hd-idle, internet-detector, iperf3-server, irqbalance, ksmbd, ledtrig-rssi, ledtrig-switch, ledtrig-usbport, lldpd, lucky, ~~lxc~~, microsocks, minidlna, msd_lite, my-dnshelper, ~~natmap~~, natter2, netspeedtest, nfs, nginx-manager, nlbwmon, onliner, openclash, packet-capture, passwall2 (+ Include Hysteria), pbr, privoxy, qbittorrent, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), ramfree, rclone, rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), tor, travelmate, ttyd, unbound, upnp, usb3disable, vlmcsd, vnstat2, vsftpd, watchcat, webdav, wifischedule, wizard, wol, wolplus, wrtbwmon, xfrpc, xinetd
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Administration
            -- btop, gotop, htop, nload, sudo, syslog-ng
        - Development
            -- automake, diffutils, gcc, make, patch, perf, pkgconf, tmon
        - Kernel modules
            -- kmod-fs-autofs4, kmod-fs-cachefiles, kmod-fs-configfs, kmod-fs-squashfs, kmod-fs-udf
        - Multimedia
            -- ffmpeg, ffprobe, graphicsmagick, imagemagick
        - Network
            -- BitTorrent
                --- mktorrent, opentracker, rtorrent, rtorrent-rpc
            -- Captive Portals
                --- apfree-wifidog, nodogsplash, simple-captive-portal
            -- Download Manager
                --- ariang, ariang-nginx, leech, webui-aria2
            -- File Transfer
                --- aria2, atftp, atftpd, croc, curl, rclone, rclone-config, rrsync (requires Languages->Python->python3-light), rsync (+ Enable lz4, extremely fast compression, + Enable xxhash, extremely fast hash), rsyncd, transfer, unishare, vsftpd
            -- Filesystem
                --- cifsmount, davfs2, ksmbd-avahi-service, ksmbd-hotplug, ksmbd-server, nfs-kernel-server-v4, nfs-kernel-server-utils, sshfs
            -- Firewall
                --- arptables-nft, conntrack, conntrackd, ebtables-nft, fwknop, ip6tables-extra, ip6tables-mod-fullconenat, ip6tables-mod-nat, ip6tables-nft, ip6tables-mod-account, iptables-mod-asn, iptables-mod-chaos, iptables-mod-checksum, iptables-mod-cluster, iptables-mod-condition, iptables-mod-conntrack-extra, iptables-mod-delude, iptables-mod-dhcpmac, iptables-mod-dnetmap, iptables-mod-extra, iptables-mod-filter, iptables-mod-fullconenat, iptables-mod-fuzzy, iptables-mod-geoip, iptables-mod-hashlimit, iptables-mod-iface, iptables-mod-ipmark, iptables-mod-ipopt, iptables-mod-ipp2p, iptables-mod-iprange, iptables-mod-ipsec, iptables-mod-ipv4options, iptables-mod-led, iptables-mod-length2, iptables-mod-logmark, iptables-mod-lscan, iptables-mod-lua, iptables-mod-nat-extra, iptables-mod-nflog, iptables-mod-nfqueue, iptables-mod-physdev, iptables-mod-proto, iptables-mod-psd, iptables-mod-quota2, iptables-mod-rpfilter, iptables-mod-rtpengine, iptables-mod-socket, iptables-mod-sysrq, iptables-mod-tarpit, iptables-mod-tee, iptables-mod-tproxy, iptables-mod-trace, iptables-mod-u32, iptables-nft, iptaccount, iptasn, iptgeoip, miniupnpc, miniupnpd, miniupnpd-nftables, natpmpc, openappid, shorewall, shorewall6, snort3
    - 6.2.7 [1:1]: 6.2 without lxc, ATH11K 1G - failed 1 (tcpping) - failed 2 (conflict: `nodogsplash` and `gnunet`, select `gnunet`) - passed
        - `...-more-2-split-7...`
        - LuCI
            -- Applications
                --- acl, acme, adguardhome, advanced, amule, antiblock, argon-config, aria2, autoreboot, autoipsetadder, banip, bcp38, beardropper, chrony, cifs-mount, clamav, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, diskman (+ Include mdadm), dnsfilter, dnsmasq-ipset, dnsproxy, docker, dockerman, eqos, eqosplus, fchomo, filemanager, firewall, frpc, frps, fwknopd, hd-idle, internet-detector, iperf3-server, irqbalance, ksmbd, ledtrig-rssi, ledtrig-switch, ledtrig-usbport, lldpd, lucky, ~~lxc~~, microsocks, minidlna, msd_lite, my-dnshelper, ~~natmap~~, natter2, netspeedtest, nfs, nginx-manager, nlbwmon, onliner, openclash, packet-capture, passwall2 (+ Include Hysteria), pbr, privoxy, qbittorrent, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), ramfree, rclone, rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), tor, travelmate, ttyd, unbound, upnp, usb3disable, vlmcsd, vnstat2, vsftpd, watchcat, webdav, wifischedule, wizard, wol, wolplus, wrtbwmon, xfrpc, xinetd
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Administration
            -- btop, gotop, htop, nload, sudo, syslog-ng
        - Development
            -- automake, diffutils, gcc, make, patch, perf, pkgconf, tmon
        - Kernel modules
            -- kmod-fs-autofs4, kmod-fs-cachefiles, kmod-fs-configfs, kmod-fs-squashfs, kmod-fs-udf
        - Multimedia
            -- ffmpeg, ffprobe, graphicsmagick, imagemagick
        - Network
            -- BitTorrent
                --- mktorrent, opentracker, rtorrent, rtorrent-rpc
            -- Captive Portals
                --- apfree-wifidog, ~~nodogsplash~~, simple-captive-portal
            -- Download Manager
                --- ariang, ariang-nginx, leech, webui-aria2
            -- File Transfer
                --- aria2, atftp, atftpd, croc, curl, rclone, rclone-config, rrsync (requires Languages->Python->python3-light), rsync (+ Enable lz4, extremely fast compression, + Enable xxhash, extremely fast hash), rsyncd, transfer, unishare, vsftpd
            -- Filesystem
                --- cifsmount, davfs2, ksmbd-avahi-service, ksmbd-hotplug, ksmbd-server, nfs-kernel-server-v4, nfs-kernel-server-utils, sshfs
            -- Firewall
                --- arptables-nft, conntrack, conntrackd, ebtables-nft, fwknop, ip6tables-extra, ip6tables-mod-fullconenat, ip6tables-mod-nat, ip6tables-nft, ip6tables-mod-account, iptables-mod-asn, iptables-mod-chaos, iptables-mod-checksum, iptables-mod-cluster, iptables-mod-condition, iptables-mod-conntrack-extra, iptables-mod-delude, iptables-mod-dhcpmac, iptables-mod-dnetmap, iptables-mod-extra, iptables-mod-filter, iptables-mod-fullconenat, iptables-mod-fuzzy, iptables-mod-geoip, iptables-mod-hashlimit, iptables-mod-iface, iptables-mod-ipmark, iptables-mod-ipopt, iptables-mod-ipp2p, iptables-mod-iprange, iptables-mod-ipsec, iptables-mod-ipv4options, iptables-mod-led, iptables-mod-length2, iptables-mod-logmark, iptables-mod-lscan, iptables-mod-lua, iptables-mod-nat-extra, iptables-mod-nflog, iptables-mod-nfqueue, iptables-mod-physdev, iptables-mod-proto, iptables-mod-psd, iptables-mod-quota2, iptables-mod-rpfilter, iptables-mod-rtpengine, iptables-mod-socket, iptables-mod-sysrq, iptables-mod-tarpit, iptables-mod-tee, iptables-mod-tproxy, iptables-mod-trace, iptables-mod-u32, iptables-nft, iptaccount, iptasn, iptgeoip, miniupnpc, miniupnpd, miniupnpd-nftables, natpmpc, openappid, shorewall, shorewall6, snort3
            -- IP Addresses and Names
                --- aggregate, announce, avahi-autoipd, avahi-daemon-service-http, avahi-daemon-service-ssh, avahi-dbus-daemon, avahi-dnsconfd, avahi-utils, bin-server, bind-server-filter-aaaa, bind-tools, ddns-scripts, ddns-scripts-cloudflare, ddns-scripts-noip, ddns-scripts-utils, dhtd, dns-over-https, dns2socks, dns2tcp, dnsdist-full, dnslookup, kadnode, mdns-utils, mdnsd, mdnsresponder
            -- NMAP Suite
                --- ncat-full, ndiff, nmap-full, nping, nping-ssl
            -- Open vSwitch
                --- openvswitch, openvswitch-python3
            -- Routing and Redirection
                --- tc-full
            -- SSH
                --- autossh, mosh-full, openssh-client, openssh-client-utils, openssh-server, openssh-sftp-avahi-service, openssh-sftp-client, openssh-sftp-server, sshtunnel, tmate
            -- Version Control Systems
                --- git, git-gitweb, git-http, git-lfs
            -- Web Servers/Proxies
                --- nginx-full
            -- Wireless
                --- aircrack-ng (+ Optimize for speed, Hwloc support, Sqlite3 support), airmon-ng, wavemon
            -- arp-scan
                --- arp-scan, arp-scan-database
            -- Others
                --- 6in4, 6to4, UDPspeeder, antiblock, bmon, bpfcountd, bpftool-full, ~~bwm-ng (+ enable configfile support, enable html output, enable csv output, enable libncurses support, enable long options)~~, bwping, cdnspeedtest, chat, coap-server, conserver-ipmi, darkstat, dnsforwarder, dnstap, dnstop, docker-lan-bridge, ds-lite, easytier, etherwake-nfqueue, ethtool-full, fail2ban, fail2banop, fping, fsh, geoip-shell, geoipupdate, gnunet, go-nats, gre, gsocket, homebox, hping3, i2pd, ifstat, iftop, iiod, internet-detector, ipip, ipset, ipset-dns, ipset-lists, ipt2socks, iptraf-ng, iputils-arping, iputils-clockdiff, iputils-ping (+ Install legacy ping4 and ping6 symlinks), iputils-tracepath (+ Install legacy tracepath4 and tracepath6 symlinks), ipvsadm, irtt, iw-full, lynx, map, memcached, mtr-json, nbd, nbd-server, ncp, net-tools-netstat, net-tools-route, netavark, netcat, netdiscover, netperf, netsniff-ng, nexttrace, noping, nut, nut-server, nut-upsc, nut-upscmd, nut-upslog, nut-upsrw, nut-upssched, nut-web-cgi, oping, pagekitec, pcapplusplus, pingcheck, pppstats, proto-bonding, q, ratechecker, ratelimit, respondd, smbinfo, spoofer, ~~tcpping~~, trafficshaper, u2pnpd, usbip, usbip-client, usbip-server, wakeonlan
        - Utilities
            -- Compression
                --- 7z, gzip, lz4, lzmainfo, pigz, unrar, zipcmp, zipmerge, ziptool, zstd
            -- Others
                --- bash, dmesg, lsblk, nano-full, ncdu, tmux
        - Others:
            -- CONFIG_ATH11K_MEM_PROFILE_1G=y
            -- CONFIG_KERNEL_IPQ_MEM_PROFILE=1024
    - 6.2.8 [1:2]: 6.2 without lxc gcc frpc frps xfrpc hysteria ffmpeg ffprobe imagemagick graphicsmagick clamav dnsproxy croc webdav2 transfer gotop amule tor ariang-nginx passwall openappid sudo zerotier - failed 1 (tcpping) - failed 2 (conflict: `nodogsplash` and `gnunet`, select `gnunet`) - passed
        - `...-more-2-split-8...`
        - LuCI
            -- Applications
                --- acl, acme, adguardhome, advanced, antiblock, argon-config, aria2, autoreboot, autoipsetadder, banip, bcp38, beardropper, chrony, cifs-mount, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, diskman (+ Include mdadm), dnsfilter, dnsmasq-ipset, docker, dockerman, eqos, eqosplus, fchomo, filemanager, firewall, fwknopd, hd-idle, internet-detector, iperf3-server, irqbalance, ksmbd, ledtrig-rssi, ledtrig-switch, ledtrig-usbport, lldpd, lucky, ~~lxc~~, microsocks, minidlna, msd_lite, my-dnshelper, ~~natmap~~, natter2, netspeedtest, nfs, nginx-manager, nlbwmon, onliner, openclash, packet-capture, pbr, privoxy, qbittorrent, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), ramfree, rclone, rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), travelmate, ttyd, unbound, upnp, usb3disable, vlmcsd, vnstat2, vsftpd, watchcat, wifischedule, wizard, wol, wolplus, wrtbwmon, xinetd
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Administration
            -- btop, htop, nload, syslog-ng
        - Development
            -- automake, diffutils, make, patch, perf, pkgconf, tmon
        - Kernel modules
            -- kmod-fs-autofs4, kmod-fs-cachefiles, kmod-fs-configfs, kmod-fs-squashfs, kmod-fs-udf
        - Network
            -- BitTorrent
                --- mktorrent, opentracker, rtorrent, rtorrent-rpc
            -- Captive Portals
                --- apfree-wifidog, ~~nodogsplash~~, simple-captive-portal
            -- Download Manager
                --- ariang, leech, webui-aria2
            -- File Transfer
                --- aria2, atftp, atftpd, curl, rclone, rclone-config, rrsync (requires Languages->Python->python3-light), rsync (+ Enable lz4, extremely fast compression, + Enable xxhash, extremely fast hash), rsyncd, unishare, vsftpd
            -- Filesystem
                --- cifsmount, davfs2, ksmbd-avahi-service, ksmbd-hotplug, ksmbd-server, nfs-kernel-server-v4, nfs-kernel-server-utils, sshfs
            -- Firewall
                --- arptables-nft, conntrack, conntrackd, ebtables-nft, fwknop, ip6tables-extra, ip6tables-mod-fullconenat, ip6tables-mod-nat, ip6tables-nft, ip6tables-mod-account, iptables-mod-asn, iptables-mod-chaos, iptables-mod-checksum, iptables-mod-cluster, iptables-mod-condition, iptables-mod-conntrack-extra, iptables-mod-delude, iptables-mod-dhcpmac, iptables-mod-dnetmap, iptables-mod-extra, iptables-mod-filter, iptables-mod-fullconenat, iptables-mod-fuzzy, iptables-mod-geoip, iptables-mod-hashlimit, iptables-mod-iface, iptables-mod-ipmark, iptables-mod-ipopt, iptables-mod-ipp2p, iptables-mod-iprange, iptables-mod-ipsec, iptables-mod-ipv4options, iptables-mod-led, iptables-mod-length2, iptables-mod-logmark, iptables-mod-lscan, iptables-mod-lua, iptables-mod-nat-extra, iptables-mod-nflog, iptables-mod-nfqueue, iptables-mod-physdev, iptables-mod-proto, iptables-mod-psd, iptables-mod-quota2, iptables-mod-rpfilter, iptables-mod-rtpengine, iptables-mod-socket, iptables-mod-sysrq, iptables-mod-tarpit, iptables-mod-tee, iptables-mod-tproxy, iptables-mod-trace, iptables-mod-u32, iptables-nft, iptaccount, iptasn, iptgeoip, miniupnpc, miniupnpd, miniupnpd-nftables, natpmpc, openappid, shorewall, shorewall6, snort3
            -- IP Addresses and Names
                --- aggregate, announce, avahi-autoipd, avahi-daemon-service-http, avahi-daemon-service-ssh, avahi-dbus-daemon, avahi-dnsconfd, avahi-utils, bin-server, bind-server-filter-aaaa, bind-tools, ddns-scripts, ddns-scripts-cloudflare, ddns-scripts-noip, ddns-scripts-utils, dhtd, dns-over-https, dns2socks, dns2tcp, dnsdist-full, dnslookup, kadnode, mdns-utils, mdnsd, mdnsresponder
            -- NMAP Suite
                --- ncat-full, ndiff, nmap-full, nping, nping-ssl
            -- Open vSwitch
                --- openvswitch, openvswitch-python3
            -- Routing and Redirection
                --- tc-full
            -- SSH
                --- autossh, mosh-full, openssh-client, openssh-client-utils, openssh-server, openssh-sftp-avahi-service, openssh-sftp-client, openssh-sftp-server, sshtunnel, tmate
            -- Version Control Systems
                --- git, git-gitweb, git-http, git-lfs
            -- Web Servers/Proxies
                --- nginx-full
            -- Wireless
                --- aircrack-ng (+ Optimize for speed, Hwloc support, Sqlite3 support), airmon-ng, wavemon
            -- arp-scan
                --- arp-scan, arp-scan-database
            -- Others
                --- 6in4, 6to4, UDPspeeder, antiblock, bmon, bpfcountd, bpftool-full, ~~bwm-ng (+ enable configfile support, enable html output, enable csv output, enable libncurses support, enable long options)~~, bwping, cdnspeedtest, chat, coap-server, conserver-ipmi, darkstat, dnsforwarder, dnstap, dnstop, docker-lan-bridge, ds-lite, easytier, etherwake-nfqueue, ethtool-full, fail2ban, fail2banop, fping, fsh, geoip-shell, geoipupdate, gnunet, go-nats, gre, gsocket, homebox, hping3, i2pd, ifstat, iftop, iiod, internet-detector, ipip, ipset, ipset-dns, ipset-lists, ipt2socks, iptraf-ng, iputils-arping, iputils-clockdiff, iputils-ping (+ Install legacy ping4 and ping6 symlinks), iputils-tracepath (+ Install legacy tracepath4 and tracepath6 symlinks), ipvsadm, irtt, iw-full, lynx, map, memcached, mtr-json, nbd, nbd-server, ncp, net-tools-netstat, net-tools-route, netavark, netcat, netdiscover, netperf, netsniff-ng, nexttrace, noping, nut, nut-server, nut-upsc, nut-upscmd, nut-upslog, nut-upsrw, nut-upssched, nut-web-cgi, oping, pagekitec, pcapplusplus, pingcheck, pppstats, proto-bonding, q, ratechecker, ratelimit, respondd, smbinfo, spoofer, ~~tcpping~~, trafficshaper, u2pnpd, usbip, usbip-client, usbip-server, wakeonlan
        - Utilities
            -- Compression
                --- 7z, gzip, lz4, lzmainfo, pigz, unrar, zipcmp, zipmerge, ziptool, zstd
            -- Others
                --- bash, dmesg, lsblk, nano-full, ncdu, tmux
    - 6.2.9: packages that are (only provided by `small-packages`, `nas` and `nas-luci` || hard to install (docker, istorenext, ...)), ATH11K 1G
        - `...-more-2-split-9...`
        - LuCI
            -- Applications
                --- advanced, autoipsetadder, beardropper, cloudflarespeedtest, dnsfilter, dnsmasq-ipset, dnsproxy, docker, dockerman, eqosplus, fchomo, fileassistant, internet-detector, iperf3-server, my-dnshelper, natter2, nginx-manager, onliner, openclash, packet-capture, passwall2 (+ Include Hysteria), pbr, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), unishare, upnp, usb3disable, webdav, wizard, wolplus, wrtbwmon
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Network
            -- Firewall
                --- miniupnpd (+ Enable IGDv2, CONFIG_MINIUPNPD_IGDv2=y)
        - Utilities
            -- Others
                --- bash, dmesg, lsblk, nano-full, ncdu, tmux
        - Others:
            -- CONFIG_ATH11K_MEM_PROFILE_1G=y
            -- CONFIG_IPQ_MEM_PROFILE_1024=y
            -- CONFIG_KERNEL_IPQ_MEM_PROFILE=1024
    - 6.2.10: packages that are (only provided by `small-packages`, `nas` and `nas-luci` || hard to install (docker, istorenext, ...)), ATH11K 1G, all kmods in `ipq60xx-nn6000-6.12-example-1-all-kmods.config` - failed 1 (kmod: rtl8189es, rtl8188eu) - failed 2 (conflict: `luci-app-fileassistant` and `luci-app-advanced`, select `luci-app-advanced`)
        - `...-more-2-split-10...`, all kmods in `ipq60xx-nn6000-6.12-example-1-all-kmods.config`
        - LuCI
            -- Applications
                --- advanced, autoipsetadder, beardropper, cloudflarespeedtest, dnsfilter, dnsmasq-ipset, dnsproxy, docker, dockerman, eqosplus, fchomo, internet-detector, iperf3-server, my-dnshelper, natter2, nginx-manager, onliner, openclash, packet-capture, passwall2 (+ Include Hysteria), pbr, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), unishare, upnp, usb3disable, webdav, wizard, wolplus, wrtbwmon
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Network
            -- Firewall
                --- miniupnpd (+ Enable IGDv2, CONFIG_MINIUPNPD_IGDv2=y)
        - Utilities
            -- Others
                --- bash, dmesg, lsblk, nano-full, ncdu, tmux
        - Others:
            -- CONFIG_ATH11K_MEM_PROFILE_1G=y
            -- CONFIG_IPQ_MEM_PROFILE_1024=y
            -- CONFIG_KERNEL_IPQ_MEM_PROFILE=1024
    - 6.2.11: packages that are (only provided by `small-packages`, `nas` and `nas-luci` || hard to install (docker, istorenext, ...) || with special configs), ATH11K 1G, all kmods in `ipq60xx-nn6000-6.12-example-1-all-kmods-extended-1.config` - failed 1 (kmod: rtl8189es, rtl8188eu) - failed 2 (conflict: `luci-app-fileassistant` and `luci-app-advanced`, select `luci-app-advanced`)
        - `...-more-2-split-11...`, all kmods in `ipq60xx-nn6000-6.12-example-1-all-kmods-extended-1.config`
        - LuCI
            -- Applications
                --- advanced, autoipsetadder, beardropper, cloudflarespeedtest, **diskman (+ Include mdadm)**, dnsfilter, dnsmasq-ipset, dnsproxy, docker, dockerman, eqosplus, fchomo, internet-detector, iperf3-server, my-dnshelper, natter2, nginx-manager, onliner, openclash, packet-capture, passwall2 (+ Include Hysteria), pbr, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), unishare, upnp, usb3disable, webdav, wizard, wolplus, wrtbwmon
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Network
            -- File Transfer
                --- rsync (+ Enable lz4, extremely fast compression, + Enable xxhash, extremely fast hash)
            -- Firewall
                --- miniupnpd (+ Enable IGDv2, CONFIG_MINIUPNPD_IGDv2=y)
            -- Wireless
                --- aircrack-ng (+ Optimize for speed, Hwloc support, Sqlite3 support)
            -- Others
                --- iputils-ping (+ Install legacy ping4 and ping6 symlinks), iputils-tracepath (+ Install legacy tracepath4 and tracepath6 symlinks)
        - Utilities
            -- Disc
                --- parted (+ Support LVM, CONFIG_PARTED_LVM2=y)
            -- Filesystem
                --- btrfs-progs (+ Build with zstd support, CONFIG_BTRFS_PROGS_ZSTD=y), squashfs-tools-unsquashfs (+ Enable LZO support, CONFIG_SQUASHFS_TOOLS_LZO_SUPPORT=y, + Enable LZ4 support, CONFIG_SQUASHFS_TOOLS_LZ4_SUPPORT=y)
            -- Others
                --- cgroupfs-mount (+ Enable kernel cgroups support, CONFIG_CGROUPFS_MOUNT_KERNEL_CGROUPS=y), collectd (+ Enable ability to use encrypted networking, CONFIG_PACKAGE_COLLECTD_ENCRYPTED_NETWORK=y, + all collectd-mod-*), coreutils (+ all coreutils-*), dockerd (+ Installs check-config.sh with dependencies, CONFIG_DOCKER_CHECK_CONFIG=y, + Includes ftp/tftp client kernel modules, CONFIG_DOCKER_NET_TFTP=y, + Enables support for devmapper snapshotting, CONFIG_DOCKER_STO_DEVMAPPER=y, + Enables support for btrfs as the backing filesystem, CONFIG_DOCKER_STO_BTRFS=y), lxc (+ Enable kernel support for LXC, CONFIG_LXC_KERNEL_OPTIONS=y, + Enable networking support for LXC containers, CONFIG_LXC_NETWORKING=y, + all utilities)
                --- bash, dmesg, lsblk, nano-full, ncdu, tmux
        - Others:
            -- CONFIG_ATH11K_MEM_PROFILE_1G=y
            -- CONFIG_IPQ_MEM_PROFILE_1024=y
            -- CONFIG_KERNEL_IPQ_MEM_PROFILE=1024



pending-unknown: luci-app-amule, luci-app-chrony

- delete!
    - fastnet恶心行为
    - arpbind ip/mac绑定无法使用，可以用DHCP选项设置
    - supervisord (任务管理器): 5年不更新，解压错误
    - webd: + Binary 编译报错，
    - ? qBittorrent: 这点内存不够用
    - cloudflarespeedtest: 真的有用?
    - partexp: 用不了; 命令扩容更方便
    - ~~pagekitec: 有tailscale还用这个?~~
    - tinyfilemanager: 用不了
    - remove conflicts (conflict: `nodogsplash` and `gnunet`, select `gnunet`), and failed packages (bwm-ng, tcpping)
    - failing kmods
        - aic8800
        - rtl legacy ones (no updates, incompatible)

- Full wanted package list
    1. 1
        - LuCI
            -- Applications
                --- acl, acme, adguardhome, advanced, amule, antiblock, argon-config, aria2, autoreboot, autoipsetadder, banip, bcp38, beardropper, chrony, cifs-mount, clamav, cloudflared, commands, control-webrestriction, control-weburl, cpufreq, cpulimit, diskman (+ Include mdadm), dnsfilter, dnsmasq-ipset, dnsproxy, docker, dockerman, eqos, eqosplus, fchomo, filemanager, firewall, frpc, frps, fwknopd, hd-idle, internet-detector, iperf3-server, irqbalance, ksmbd, ledtrig-rssi, ledtrig-switch, ledtrig-usbport, lldpd, lucky, lxc, microsocks, minidlna, msd_lite, my-dnshelper, ~~natmap~~, natter2, netspeedtest, nfs, nginx-manager, nlbwmon, onliner, openclash, packet-capture, passwall2 (+ Include Hysteria), pbr, privoxy, qbittorrent, quickstart (需要关闭 Minify JavaScript sources 和 Minify CSS files in luci-base), ramfree, rclone, rtbwmon, socat, statistics, tailscale-community, taskplan, tcpdump, timecontrol(多选一1), tor, travelmate, ttyd, unbound, upnp, usb3disable, vlmcsd, vnstat2, vsftpd, watchcat, webdav, wifischedule, wizard, wol, wolplus, wrtbwmon, xfrpc, xinetd
            -- Collections
                --- luci-nginx
            -- Modules
                --- luci-mod-dashboard
                --- luci-mod-istorenext
            -- Protocols
                --- luci-proto-wireguard
            -- Libraries
                --- luci-lib-ipkg
                --- luci-lib-json
        - Administration
            -- btop, gotop, htop, nload, sudo, syslog-ng
        - Development
            -- automake, diffutils, gcc, make, patch, perf, pkgconf, tmon
        - Kernel modules
            -- kmod-fs-autofs4, kmod-fs-cachefiles, kmod-fs-configfs, kmod-fs-squashfs, kmod-fs-udf
        - Multimedia
            -- ffmpeg, ffprobe, graphicsmagick, imagemagick
        - Network
            -- BitTorrent
                --- mktorrent, opentracker, rtorrent, rtorrent-rpc
            -- Captive Portals
                --- apfree-wifidog, simple-captive-portal
            -- Download Manager
                --- ariang, ariang-nginx, leech, webui-aria2
            -- File Transfer
                --- aria2, atftp, atftpd, croc, curl, rclone, rclone-config, rrsync (requires Languages->Python->python3-light), rsync (+ Enable lz4, extremely fast compression, + Enable xxhash, extremely fast hash), rsyncd, transfer, unishare, vsftpd
            -- Filesystem
                --- cifsmount, davfs2, ksmbd-avahi-service, ksmbd-hotplug, ksmbd-server, nfs-kernel-server-v4, nfs-kernel-server-utils, sshfs
            -- Firewall
                --- arptables-nft, conntrack, conntrackd, ebtables-nft, fwknop, ip6tables-extra, ip6tables-mod-fullconenat, ip6tables-mod-nat, ip6tables-nft, ip6tables-mod-account, iptables-mod-asn, iptables-mod-chaos, iptables-mod-checksum, iptables-mod-cluster, iptables-mod-condition, iptables-mod-conntrack-extra, iptables-mod-delude, iptables-mod-dhcpmac, iptables-mod-dnetmap, iptables-mod-extra, iptables-mod-filter, iptables-mod-fullconenat, iptables-mod-fuzzy, iptables-mod-geoip, iptables-mod-hashlimit, iptables-mod-iface, iptables-mod-ipmark, iptables-mod-ipopt, iptables-mod-ipp2p, iptables-mod-iprange, iptables-mod-ipsec, iptables-mod-ipv4options, iptables-mod-led, iptables-mod-length2, iptables-mod-logmark, iptables-mod-lscan, iptables-mod-lua, iptables-mod-nat-extra, iptables-mod-nflog, iptables-mod-nfqueue, iptables-mod-physdev, iptables-mod-proto, iptables-mod-psd, iptables-mod-quota2, iptables-mod-rpfilter, iptables-mod-rtpengine, iptables-mod-socket, iptables-mod-sysrq, iptables-mod-tarpit, iptables-mod-tee, iptables-mod-tproxy, iptables-mod-trace, iptables-mod-u32, iptables-nft, iptaccount, iptasn, iptgeoip, miniupnpc, miniupnpd, miniupnpd-nftables, natpmpc, openappid, shorewall, shorewall6, snort3
            -- IP Addresses and Names
                --- aggregate, announce, avahi-autoipd, avahi-daemon-service-http, avahi-daemon-service-ssh, avahi-dbus-daemon, avahi-dnsconfd, avahi-utils, bin-server, bind-server-filter-aaaa, bind-tools, ddns-scripts, ddns-scripts-cloudflare, ddns-scripts-noip, ddns-scripts-utils, dhtd, dns-over-https, dns2socks, dns2tcp, dnsdist-full, dnslookup, kadnode, mdns-utils, mdnsd, mdnsresponder
            -- NMAP Suite
                --- ncat-full, ndiff, nmap-full, nping, nping-ssl
            -- Open vSwitch
                --- openvswitch, openvswitch-python3
            -- Routing and Redirection
                --- tc-full
            -- SSH
                --- autossh, mosh-full, openssh-client, openssh-client-utils, openssh-server, openssh-sftp-avahi-service, openssh-sftp-client, openssh-sftp-server, sshtunnel, tmate
            -- Version Control Systems
                --- git, git-gitweb, git-http, git-lfs
            -- Web Servers/Proxies
                --- nginx-full
            -- Wireless
                --- aircrack-ng (+ Optimize for speed, Hwloc support, Sqlite3 support), airmon-ng, wavemon
            -- arp-scan
                --- arp-scan, arp-scan-database
            -- Others
                --- 6in4, 6to4, UDPspeeder, antiblock, bmon, bpfcountd, bpftool-full, ~~bwm-ng (+ enable configfile support, enable html output, enable csv output, enable libncurses support, enable long options)~~, bwping, cdnspeedtest, chat, coap-server, conserver-ipmi, darkstat, dnsforwarder, dnstap, dnstop, docker-lan-bridge, ds-lite, easytier, etherwake-nfqueue, ethtool-full, fail2ban, fail2banop, fping, fsh, geoip-shell, geoipupdate, gnunet, go-nats, gre, gsocket, homebox, hping3, i2pd, ifstat, iftop, iiod, internet-detector, ipip, ipset, ipset-dns, ipset-lists, ipt2socks, iptraf-ng, iputils-arping, iputils-clockdiff, iputils-ping (+ Install legacy ping4 and ping6 symlinks), iputils-tracepath (+ Install legacy tracepath4 and tracepath6 symlinks), ipvsadm, irtt, iw-full, lynx, map, memcached, mtr-json, nbd, nbd-server, ncp, net-tools-netstat, net-tools-route, netavark, netcat, netdiscover, netperf, netsniff-ng, nexttrace, noping, nut, nut-server, nut-upsc, nut-upscmd, nut-upslog, nut-upsrw, nut-upssched, nut-web-cgi, oping, pagekitec, pcapplusplus, pingcheck, pppstats, proto-bonding, q, ratechecker, ratelimit, respondd, smbinfo, spoofer, ~~tcpping~~, trafficshaper, u2pnpd, usbip, usbip-client, usbip-server, wakeonlan
        - Utilities
            -- Compression
                --- 7z, gzip, lz4, lzmainfo, pigz, unrar, zipcmp, zipmerge, ziptool, zstd
            -- Disc
                --- autopart, blkdiscard, blkid, blockdev, cfdisk, cgdisk, eject, fatresize, fdisk, findfs, fio, fixparts, gdisk, hd-idle, hdparm, lsblk, mdadm, mtools, nvme-cli, parted (+ Support LVM, CONFIG_PARTED_LVM2=y), sfdisk sgdisk, uvol, wipefs
            -- Editors
                --- hexedit, nano-full, vim-fuller
            -- Filesystem
                --- acl, afuse, attr, badblocks, btrfs-progs (+ Build with zstd support, CONFIG_BTRFS_PROGS_ZSTD=y), chattr, debugfs, dosfstools, dumpe2fs, e2freefrag, e2fsprogs, e4crypt, exfat-fsck, exfat-mkfs, f2fs-tools, f2fsck, filefrag, fstrim, fuse3-utils, hfsfsck, lf, lsattr, mkf2fs, mkhfs, ncdu, nfs-utils-v4, resize2fs, squashfs-tools-mksquashfs, squashfs-tools-unsquashfs (+ Enable LZO support, CONFIG_SQUASHFS_TOOLS_LZO_SUPPORT=y, + Enable LZ4 support, CONFIG_SQUASHFS_TOOLS_LZ4_SUPPORT=y), swap-utils, sysfsutils, tune2fs, xfs-admin, xfs-fsck, xfs-growfs, xfs-mkfs
            -- Shells
                --- bash, mksh, zsh
            -- Terminal
                --- agetty, screen, serialconsole, setterm, tio, tmux, wall
            -- Time Zone info
                --- zoneinfo-all
            -- Utilities
                --- sunwait
            -- Others
                --- ack, acpid, adb, arp-whisper, at, base16384, bc, bsdiff, bspatch, cal, cgroup-tools, cgroupfs-mount (+ Enable kernel cgroups support, CONFIG_CGROUPFS_MOUNT_KERNEL_CGROUPS=y), cli, cligen, clocate, coap-client, collectd (+ Enable ability to use encrypted networking, CONFIG_PACKAGE_COLLECTD_ENCRYPTED_NETWORK=y, + all collectd-mod-*), colrm, containerd, coremark, coreutils (+ all coreutils-*), cpulimit, cpupower, cpusage, csstidy, ctop, dbus, dbus-utils, dc, device-observatory, dmesg, dockerd (+ Installs check-config.sh with dependencies, CONFIG_DOCKER_CHECK_CONFIG=y, + Includes ftp/tftp client kernel modules, CONFIG_DOCKER_NET_TFTP=y, + Enables support for devmapper snapshotting, CONFIG_DOCKER_STO_DEVMAPPER=y, + Enables support for btrfs as the backing filesystem, CONFIG_DOCKER_STO_BTRFS=y), dos2unix, dropbearconvert, enterprise-numbers, evtest, extract, eza, fan2go, fastfetch, file, findutils, flashrom, flashrom-pci, flashrom-spi, flashrom-usb, flock, fuse-overlayfs, fx, gawk, gddrescue, gawk, gddrescue, getopt, gnuplot, grep, hashdeep, hwclock, hwinfo, hwloc-utils, iconv, iio-utils, inotifywait, inotifywatch, io, ipcs, irqbalance, iwcap, iwinfo, joker, jq-full, kmod, last, less, logger, logrotate, lolcat, look, losetup, lscpu, lsd, lslocks, lsns, lsof, lxc (+ Enable kernel support for LXC, CONFIG_LXC_KERNEL_OPTIONS=y, + Enable networking support for LXC containers, CONFIG_LXC_NETWORKING=y, + all utilities), maccalc, macchanger, mandoc, mc, mc-skins, mcookie, mhz, miniflux, minisign, mmc-utils, more, moreutils, nand-utils, nnn, nsenter, nssinfo, nsutils, oath-toolkit, passh, pkgen, powertop, prlimit, procps-ng, procps-ng3, procs, progress, provision, psmisc, pv, qrencode, rename, reptyr, rev, rhash, rng-tools, sed, sedutil, shared-mime-info, sipcalc, slide-switch, smartd, smartmontools, smartmontools-drivedb, sockread, sshpass, strace, stress-ng, sysrepo (broken?), sysrepocfg (broken?), sysrepoctl (broken?), sysstat, telegraf-full, tinyionice, tinymembench, tracertools, tree, ucode-mod-bpf, ucode-mod-uclient, ucode-mod-udebug, unix2dos, usb-modeswitch, usbids, usbutils, uuidd, uuidgen, whereis, which, whiptail, whois, wipe, xxd, xxhash, yq 











