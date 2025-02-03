#!/bin/bash

# 设置新的 root 密码
NEW_PASS="NewSecurePass123"

# 修改 root 密码
echo -e "$NEW_PASS\n$NEW_PASS" | passwd root

# 检查是否修改成功
if [ $? -eq 0 ]; then
    echo "✅ Root 密码修改成功！"
else
    echo "❌ 修改 root 密码失败，请检查权限！"
fi
