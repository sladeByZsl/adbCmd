#!/bin/bash

echo "系统级 Git 配置文件位置及内容:"
echo "/usr/local/etc/gitconfig"
cat /usr/local/etc/gitconfig
echo

echo "全局级 Git 配置文件位置及内容:"
echo "$HOME/.gitconfig"
cat $HOME/.gitconfig
echo

echo "本地级 Git 配置文件位置及内容:"
cd "$1"
echo "$(pwd)/.git/config"
cat "$(pwd)/.git/config"
