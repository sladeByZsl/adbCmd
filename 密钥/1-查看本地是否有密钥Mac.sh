#!/bin/bash

# 设置Git默认密钥路径
gitKeyPath="$HOME/.ssh/id_rsa.pub"

echo "您的Git默认密钥路径为:"
echo "$gitKeyPath"

echo ""
echo "您的公钥内容如下:"

# 检查公钥文件是否存在
if [[ -f "$gitKeyPath" ]]; then
    cat "$gitKeyPath"
    # 复制到剪贴板
    pbcopy < "$gitKeyPath"
    echo ""
    echo "公钥已复制到剪贴板。"
else
    echo "未找到公钥文件。"
fi

read -p "按任意键继续..."
