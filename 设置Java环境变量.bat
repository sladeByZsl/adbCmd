chcp 65001
@echo off


title java环境配置
echo 一键配置java环境，请以管理员身份运行~~！

set /p javah=请输入JDK目录:
echo 您的jdk目录为---%javah%
echo 是否进行环境变量设置？[Y/n]


:shuru
set /p input=
if "%input%"=="Y" goto zhixing
if "%input%"=="y" goto zhixing
if "%input%"=="N" goto guanbi
if "%input%"=="n" goto guanbi
echo 输入错误，请重新输入！[Y/n]
goto shuru

:zhixing
echo -----
echo JAVAHOME:
setx "JAVAHOME" "%javah%
echo -----
echo CLASSPATH:
setx "CLASSPATH" ".;%%JAVAHOME%%\lib\dt.jar;%%JAVAHOME%%\lib\tools.jar;"
echo -----
echo Path:
set p_=%Path%
set t_="java环境变量配置.data"
echo %p_% >%t_%
findstr /c:"%JAVAHOME%\bin;%JAVAHOME%\jre\bin;" %t_% >nul 2>&1
if %errorlevel% equ 0 (
  echo path无需配置！
  ) else (
 setx "Path" "%%JAVAHOME%%\bin;%%JAVAHOME%%\jre\bin;%Path%"

)
del %t_%
echo -----
pause
exit



:guanbi
echo byebye~~
pause
exit


