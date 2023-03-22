chcp 65001
@echo off
set /p a=请输入apk路径:
rem echo %a% 
adb install  -r %a%
pause