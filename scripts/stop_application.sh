#!/bin/bash

# 检查supervisor是否在运行
if pgrep supervisord > /dev/null; then
    # 停止应用
    supervisorctl stop calculator
    # 停止supervisor
    supervisorctl shutdown
fi

# 确保所有Python进程都已停止
pkill -f "python3 app.py" 