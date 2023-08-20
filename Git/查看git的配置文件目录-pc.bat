@echo off
:: 设置编码为UTF-8并忽略输出
chcp 65001 >nul

echo.
echo "系统级 Git For Windows 配置文件位置及内容:"
echo "C:/Program Files/Git/mingw64/etc/gitconfig"
type "C:/Program Files/Git/mingw64/etc/gitconfig"
echo.

echo.
echo "系统级 Git 配置文件位置及内容:"
echo "%PROGRAMDATA%\Git\config"
type "%USERPROFILE%\.gitconfig"
echo.


echo "全局级 Git 配置文件位置及内容:"
echo "%USERPROFILE%\.gitconfig"
type "%USERPROFILE%\.gitconfig"
echo.

endlocal
pause
