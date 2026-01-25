## 在Docker中编译

1. 进入此目录: `cd builder-in-docker/`
2. 创建镜像: `docker build -t libwrt-builder-ax5_jdc .`
3. 创建和进入容器: `docker run -it --name openwrt-build -v $(pwd)/openwrt-data:/home/build libwrt-builder-ax5_jdc:latest`
    - 如需编译完自动删除容器 (记得复制编译产物): `docker run -it --rm --name openwrt-build -v $(pwd)/openwrt-data:/home/build libwrt-builder-ax5_jdc:latest`
4. 在容器内:
    1. 准备环境: `bash 01-prepare-env.sh`
    2. 更改配置: `bash 02-menuconfig.sh`
    3. 编译: `bash 03-compile.sh`
    4. 清除准备下次编译: `bash 04-cleanup-and-update-for-compile-again.sh`
5. 快速停止容器: `docker stop -t 0 openwrt-build`

快速脚本示例 (适合copy-paste):

```bash
# In your machine
cd builder-in-docker/
docker build -t libwrt-builder-ax5_jdc .
docker run -it --name openwrt-build -v $(pwd)/openwrt-data:/home/build libwrt-builder-ax5_jdc:latest
# In container
bash 01-prepare-env.sh
bash 02-menuconfig.sh
bash 03-compile.sh
bash 04-cleanup-and-update-for-compile-again.sh
```
