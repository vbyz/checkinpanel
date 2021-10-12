#!/bin/bash

PATH="/usr/local/bin:/usr/bin:/bin"

# 初始化变量
V2P_FILE='/usr/local/app/script/Lists/task.list'
QL_FILE='/ql/config/env.sh'
IS_MACOS=$(uname | grep -c 'Darwin')
IS_DISPLAY_CONTEXT=1

# 检查环境：面板先于系统
check_env() {
    if [[ -f "${V2P_FILE}" ]]; then
        pannel="elecv2p"
    elif [[ -f "${QL_FILE}" ]]; then
        pannel="qinglong"
    elif [[ -f /etc/redhat-release ]]; then
        release="centos"
    elif [ "${IS_MACOS}" -eq 1 ]; then
        release="macos"
    elif < /etc/issue grep -q -E -i "debian"; then
        release="debian"
    elif < /etc/issue grep -q -E -i "ubuntu"; then
        release="ubuntu"
    elif < /etc/issue grep -q -E -i "centos|red hat|redhat"; then
        release="centos"
    elif < /proc/version grep -q -E -i "debian"; then
        release="debian"
    elif < /proc/version grep -q -E -i "ubuntu"; then
        release="ubuntu"
    elif < /proc/version grep -q -E -i "centos|red hat|redhat"; then
        release="centos"
    fi
}

# 获取配置
source_config() {
    check_env
    if [ "${ENV_PATH}" ]; then
        source "${ENV_PATH}"
    elif [ "${pannel}" == "elecv2p" ]; then
        source "/usr/local/app/script/Lists/.env"
    elif [ "${pannel}" == "qinglong" ]; then
        source "/ql/config/.env"
    else
        source "$(dirname "$0")/.env"
    fi
    # 是否显示上下文 默认是
    if [ "${DISPLAY_CONTEXT}" == "0" ]; then
        IS_DISPLAY_CONTEXT=0
    fi
}
