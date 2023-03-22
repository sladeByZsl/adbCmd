chcp 65001
@echo off
set /p a=请输入端口号:
netstat -ano|findstr %a%
pause