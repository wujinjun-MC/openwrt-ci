# cd /tmp
# wget -q https://www.cpolar.com/static/downloads/releases/3.3.18/cpolar-stable-linux-amd64.zip -O cpolar.zip && unzip cpolar.zip
if ! which cpolar
then
    while ! curl -sL https://git.io/cpolar | sed '/download_cpolar() {/a RELEASE_VERSION=latest' | sudo bash
    do
        sleep 5
    done
fi
mkdir -p ~/.ssh
echo "$MY_SSH_PUB_KEY" >> ~/.ssh/authorized_keys
echo "Starting tunnel..."
env > ~/current_env.txt
cpolar authtoken "$MY_REVERSE_PROXY_TOKEN"
echo "Pleased wait and check tcp tunnel on your dashboard at https://dashboard.cpolar.com/status"
# echo "Remove /tmp/keep-term to continue"
cpolar tcp 22 -daemon on -log /tmp/cpolar.log -log-level INFO &# tail -F ~/test.log &
echo "Write your release notes at /workdir/openwrt/custom_release_notes.txt"
echo "echo Write your release notes at /workdir/openwrt/custom_release_notes.txt" >> ~/.bash_profile
sleep 10
if [ "$1"x != "nonblock"x ]
then
    if ! [[ -f /tmp/keep-term ]]
    then
        export KEEPALIVE_FLAG_FILE=/tmp/keep-term
    else
        export KEEPALIVE_FLAG_FILE=$(mktemp)
    fi
    touch "$KEEPALIVE_FLAG_FILE"
    echo "Remove $KEEPALIVE_FLAG_FILE to continue"
    echo "echo Remove $KEEPALIVE_FLAG_FILE to stop blocking next step"  >> ~/.bash_profile
    while true
    do
        if ! [[ -f "$KEEPALIVE_FLAG_FILE" ]]
        then
            echo "Keepalive file removed, continue."
            break
        elif ! pgrep cpolar &>/dev/null
        then
            echo "Cpolar exited, continue."
            break
        fi
        sleep 10
    done
fi


# 定义目标源码路径 (根据你提供的容器路径)
TARGET_PATH="/home/runner/work/openwrt-ax5-jdc/openwrt-ax5-jdc/openwrt"
echo "Enter source code directory: $TARGET_PATH"

# 写入自动化逻辑到 .bash_profile
cat << 'EOF' >> ~/.bash_profile
# 检查是否在 Remote 会话中，且当前目录是家目录
if [ -n "$SSH_CONNECTION" ] || [ -n "$SSH_CLIENT" ]; then
    if [ "$PWD" = "$HOME" ]; then
        # 这里的路径会自动替换为上面定义的变量值
        SOURCE_DIR="/home/runner/work/openwrt-ax5-jdc/openwrt-ax5-jdc/openwrt"
        if [ -d "$SOURCE_DIR" ]; then
            cd "$SOURCE_DIR"
            echo -e "\033[32m[Cpolar Debug] 已自动跳转至源码目录: $SOURCE_DIR\033[0m"
            echo -e "\033[33m提示: 输入 'make menuconfig' 进行配置，完成后输入 'rm /tmp/keep-term' 退出\033[0m"
        fi
    fi
fi
EOF

# 一键进入 menuconfig
cat << 'EOF' >> ~/.bash_profile
enter_menuconfig() {
    local target="/home/runner/work/openwrt-ax5-jdc/openwrt-ax5-jdc/openwrt"
    cd "$target"
    tmux new-session -A -s config "make menuconfig"
}

# 执行函数
#enter_menuconfig
EOF
