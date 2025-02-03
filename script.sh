#!/bin/bash

# 提示用户输入 root 密码
read -p "请输入新的 ROOT 密码: " NEW_PASS

# 确认密码
read -p "请再次输入新的 ROOT 密码: " CONFIRM_PASS

# 检查两次输入是否一致
if [ "$NEW_PASS" != "$CONFIRM_PASS" ]; then
    echo "❌ 密码不匹配，请重新运行脚本！"
    exit 1
fi

# 修改 root 密码
echo -e "$NEW_PASS\n$NEW_PASS" | passwd root

# 检查是否修改成功
if [ $? -eq 0 ]; then
    echo "✅ Root 密码修改成功！"
else
    echo "❌ 修改 root 密码失败，请检查权限！"
fi
