#!/bin/bash

# 提示用户输入邮箱
echo -n "请输入您的邮箱地址: "
read email

# 提示用户输入输出目录
echo -n "请输入输出目录 (留空或输入0表示当前文件夹，输入1表示Git默认路径): "
read outputDir

# 判断用户输入
if [[ "$outputDir" == "" || "$outputDir" == "0" ]]; then
    outputDir=$(pwd)
elif [ "$outputDir" == "1" ]; then
    outputDir="$HOME/.ssh"
fi

# 确保路径以/结束
if [[ "$outputDir" != */ ]]; then
    outputDir="$outputDir/"
fi

# 使用输入的邮箱和指定的目录路径运行ssh-keygen命令
ssh-keygen -t rsa -C "$email" -f "${outputDir}id_rsa"

echo
echo "密钥已生成在以下路径:"
echo "${outputDir}id_rsa"

# 打印公钥
echo
echo "您的公钥如下:"
cat "${outputDir}id_rsa.pub"
