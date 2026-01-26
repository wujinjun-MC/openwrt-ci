## 在Docker中编译

1. 如果使用Btrfs，请关闭当前文件夹的写时复制 (CoW) 避免占用快照空间 `sudo chattr +C builder-in-docker/openwrt-data`
2. 进入此目录: `cd builder-in-docker/`
3. 创建镜像: `docker build -t libwrt-builder-ax5_jdc .`
4. 创建和进入容器: `docker run -it --name openwrt-build --network host -v $(pwd)/openwrt-data:/home/ubuntu libwrt-builder-ax5_jdc:latest`
    - 如需退出时自动删除容器 (记得复制编译产物): `docker run -it --rm --name openwrt-build --network host -v $(pwd)/openwrt-data:/home/ubuntu libwrt-builder-ax5_jdc:latest`
5. 在容器内:
    1. 准备环境: `bash 01-prepare-env.sh`
    2. 更改配置: `bash 02-menuconfig.sh`
    3. 编译: `bash 03-compile.sh`
    4. 清除准备下次编译: `bash 04-cleanup-and-update-for-compile-again.sh`
6. 快速停止容器: `docker stop -t 0 openwrt-build`

快速脚本示例 (适合copy-paste):

```bash
# In your machine
cd builder-in-docker/
docker build -t libwrt-builder-ax5_jdc .
docker run -it --name openwrt-build --network host -v $(pwd)/openwrt-data:/home/ubuntu libwrt-builder-ax5_jdc:latest
# In container
bash 01-prepare-env.sh
bash 02-menuconfig.sh
bash 03-compile.sh
bash 04-cleanup-and-update-for-compile-again.sh
```

代理加速下载:
```bash
# 需要创建容器时 "--network host"
# 在容器内执行命令前
export http_proxy=http://127.0.0.1:7897
export https_proxy=$http_proxy
```

避免跳过`make download`: 删除 `builder-in-docker/openwrt-data/builder/openwrt/flags-downloaded-packages`

强制单线程编译: 容器内 `export force_single_thread=1`
