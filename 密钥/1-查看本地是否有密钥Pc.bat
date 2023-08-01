@echo off

:: 设置编码为UTF-8并忽略输出
chcp 65001 >nul

:: 设置Git默认密钥路径
set gitKeyPath=%USERPROFILE%\.ssh\id_rsa.pub

echo 您的Git默认密钥路径为:
echo %gitKeyPath%

echo.
echo 您的公钥内容如下:

:: 检查公钥文件是否存在
if exist "%gitKeyPath%" (
    type "%gitKeyPath%"
    type "%gitKeyPath%" | clip
    echo.
    echo 公钥已复制到剪贴板。
) else (
    echo 未找到公钥文件。
)

pause
