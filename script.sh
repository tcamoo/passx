#!/bin/bash

# 提示用户输入 root 密码
read -p "请输入新的密码: " NEW_PASS

# 确认密码
read -p "请再来一次: " CONFIRM_PASS

# 检查两次输入是否一致
if [ "$NEW_PASS" != "$CONFIRM_PASS" ]; then
    echo "❌ 密码不匹配，你是不是傻！"
    exit 1
fi

# 修改 root 密码
echo -e "$NEW_PASS\n$NEW_PASS" | passwd root

# 检查是否修改成功
if [ $? -eq 0 ]; then
    echo "✅ Root 密码真的修改成功了！"
else
    echo "❌ 修改 root 密码失败，你连权限都没有！"
fi
