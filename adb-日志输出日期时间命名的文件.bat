adb logcat -c
adb logcat > "%date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%h%time:~3,2%m%time:~6,2%.log"
pause