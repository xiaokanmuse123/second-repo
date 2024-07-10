#!/bin/bash

# 删除旧版 Docker
echo "卸载旧版 Docker"
yum remove -y docker*
docker version

echo "删除完成"
yum update -y
echo "更新软件包索引"

# 安装 yum 工具
yum install -y yum-utils
echo "安装 yum 工具"

# 配置 yum 源（阿里）
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
echo "配置 yum 源（阿里）"

# 安装 Docker
yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo "安装 Docker"

echo "安装完成"

#输出 docker版本信息
echo "当前docker版本："
docker version
