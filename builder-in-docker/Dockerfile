# 使用 Ubuntu latest 作为基础镜像
FROM ubuntu:latest

# 环境变量设置
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
ENV REPO_URL_BUILDER=https://github.com/LiBwrt/openwrt-6.x.git
ENV REPO_URL=https://github.com/LiBwrt/openwrt-6.x.git
ENV REPO_BRANCH=main-nss
ENV CONFIG_FILE=configs/ipq60xx-ax5-jdc-6.12.config
ENV DIY_SCRIPT=libwrt.sh
ENV CLASH_KERNEL=amd64
ENV CACHE_TOOLCHAIN=true
ENV UPLOAD_BIN_DIR=false
ENV FIRMWARE_RELEASE=true
#ENV FIRMWARE_TAG=IPQ60XX-AX5-JDC-6.12 # 已改为动态生成

# 设置镜像
RUN sed -i 's|http://archive.ubuntu.com/ubuntu/|http://mirrors.tuna.tsinghua.edu.cn/ubuntu/|g' /etc/apt/sources.list /etc/apt/sources.list.d/ubuntu.sources 2>/dev/null || true
RUN sed -i 's|http://security.ubuntu.com/ubuntu/|http://mirrors.tuna.tsinghua.edu.cn/ubuntu/|g' /etc/apt/sources.list /etc/apt/sources.list.d/ubuntu.sources 2>/dev/null || true

# 安装基础编译依赖
RUN apt-get update && apt-get full-upgrade -y && apt-get install -yqq sudo curl
RUN bash -c 'bash <(curl -sL https://build-scripts.immortalwrt.org/init_build_environment.sh)'
RUN sudo -E apt -yqq install dos2unix libfuse-dev
RUN apt -yqq autoremove --purge && apt -yqq autoclean && apt -yqq clean
RUN rm -rf /var/lib/apt/lists/*

# 设置时区
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN adduser ubuntu sudo
RUN echo 'ubuntu ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoer

# 创建非 root 用户 (OpenWrt 严禁使用 root 编译)
USER ubuntu
WORKDIR /home/ubuntu

STOPSIGNAL SIGKILL

# 进入shell，开始自定义
CMD ["/bin/bash"]
