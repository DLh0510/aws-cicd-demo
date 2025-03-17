#!/bin/bash

# 进入应用目录
cd /home/ec2-user/calculator-app

# 安装应用依赖
pip3 install -r requirements.txt

# 启动supervisor
supervisord -c /etc/supervisor/supervisord.conf

# 等待几秒确保supervisor完全启动
sleep 5

# 使用supervisorctl启动应用
supervisorctl start calculator 