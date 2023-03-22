chcp 65001
@echo off
set /p a=请输入进程号:
tasklist|findstr %a%
pause