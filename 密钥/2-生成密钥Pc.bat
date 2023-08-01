@echo off

:: 设置编码为UTF-8并忽略输出
chcp 65001 >nul

:: 提示用户输入邮箱
echo 请输入您的邮箱地址: 
set /p email=

:: 提示用户输入输出目录
echo 请输入输出目录 (留空或输入0表示当前文件夹，输入1表示Git默认路径)：
set /p outputDir=

:: 判断用户输入
if "%outputDir%"=="" set outputDir=%~dp0
if "%outputDir%"=="0" set outputDir=%~dp0
if "%outputDir%"=="1" set outputDir=%USERPROFILE%\.ssh\

:: 使用输入的邮箱和指定的目录路径运行ssh-keygen命令
ssh-keygen -t rsa -C "%email%" -f "%outputDir%id_rsa"

echo.
echo 密钥已生成在以下路径:
echo %outputDir%id_rsa

:: 打印公钥
echo.
echo 您的公钥如下:
type "%outputDir%id_rsa.pub"

pause
