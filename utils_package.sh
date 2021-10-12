#!/bin/bash

# 检查账户权限
check_root() {
    if [ 0 == $UID ]; then
        echo -e "当前用户是 ROOT 用户，可以继续操作" && sleep 1
    else
        echo -e "当前非 ROOT 账号(或没有 ROOT 权限)，无法继续操作，请更换 ROOT 账号或使用 su 命令获取临时 ROOT 权限" && exit 1
    fi
}

# 检查 jq 依赖
check_jq_installed_status() {
    if [ -z "$(command -v jq)" ]; then
        echo -e "jq 依赖没有安装，开始安装..."
        check_root
        if [ "${pannel}" ]; then
            apk add --no-cache jq
        elif [[ ${release} == "centos" ]]; then
            yum update && yum install jq -y
        elif [[ ${release} == "macos" ]]; then
            brew install jq
        else
            apt-get update && apt-get install jq -y
        fi
        if [ -z "$(command -v jq)" ]; then
            echo -e "jq 依赖安装失败，请检查！" && exit 1
        else
            echo -e "jq 依赖安装成功！"
        fi
    fi
}

# 检查 Java 依赖
check_java_installed_status() {
    if [ -z "$(command -v java)" ]; then
        echo -e "Java 依赖没有安装，开始安装..."
        check_root
        if [ "${pannel}" ]; then
            apk add --no-cache openjdk8
        fi
        if [ -z "$(command -v java)" ]; then
            echo -e "Java 依赖安装失败，请检查！" && exit 1
        else
            echo -e "Java 依赖安装成功！"
        fi
    fi
}

check_jq_installed_status
if [[ "${required_packages}" =~ "java" ]]; then check_java_installed_status; fi
