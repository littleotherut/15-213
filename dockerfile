# 建议使用 Ubuntu 20.04 或 22.04，比较稳定
FROM ubuntu:22.04

# 设置非交互前端，避免 apt 安装时卡在时区选择等步骤
ENV DEBIAN_FRONTEND=noninteractive

# 更换国内源（可选，如果构建速度太慢可以取消注释下面两行）
RUN sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list \
    && sed -i 's@//ports.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list \
    && sed -i 's@//security.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list

RUN apt-get update
# 安装核心依赖
# build-essential: 包含 gcc, make 等
# gcc-multilib: 极其重要！支持 32 位编译（CSAPP 很多 Lab 需要）
# gdb: 调试器
# valgrind: 内存检查（Malloc Lab 必备）
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc-multilib \
    gdb \
    valgrind \
    make \
    vim \
    nano \
    sudo \
    python3 \
    bsdmainutils \
    net-tools \
    && rm -rf /var/lib/apt/lists/*

# 设置工作目录
WORKDIR /csapp

# 默认进入 bash
CMD ["/bin/bash"]