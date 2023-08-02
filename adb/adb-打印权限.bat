chcp 65001
@echo off
set /p a=请输入apk名称:
rem echo %a% 
aapt dump permissions %a%.apk
pause
