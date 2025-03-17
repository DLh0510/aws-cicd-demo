#!/bin/bash

# 安装python和pip（如果还没安装）
yum install -y python3 python3-pip

# 创建应用目录（如果不存在）
mkdir -p /home/ec2-user/calculator-app

# 安装进程管理工具
pip3 install supervisor

# 创建supervisor配置目录
mkdir -p /etc/supervisor/conf.d

# 创建supervisor配置文件
cat > /etc/supervisor/supervisord.conf << EOF
[unix_http_server]
file=/tmp/supervisor.sock

[supervisord]
logfile=/tmp/supervisord.log
logfile_maxbytes=50MB
logfile_backups=10
loglevel=info
pidfile=/tmp/supervisord.pid
nodaemon=false
minfds=1024
minprocs=200

[rpcinterface:supervisor]
supervisor.rpcinterface_factory = supervisor.rpcinterface:make_main_rpcinterface

[supervisorctl]
serverurl=unix:///tmp/supervisor.sock

[include]
files = /etc/supervisor/conf.d/*.conf
EOF

# 创建应用的supervisor配置
cat > /etc/supervisor/conf.d/calculator.conf << EOF
[program:calculator]
directory=/home/ec2-user/calculator-app
command=python3 app.py
autostart=true
autorestart=true
stderr_logfile=/var/log/calculator.err.log
stdout_logfile=/var/log/calculator.out.log
user=ec2-user
EOF 