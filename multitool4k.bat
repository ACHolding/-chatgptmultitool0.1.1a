@echo off
title AC's Multitool by ChatGPT 0.1.1
color 0A

:menu
cls
echo =====================================
echo      AC's MULTITOOL BY CHATGPT
echo               0.1.1
echo =====================================
echo.
echo 1. DNS Lookup
echo 2. Flush DNS Cache
echo 3. Show Network Config
echo 4. Ping Host
echo 5. Traceroute
echo 6. System Information
echo 7. Temp File Cleaner
echo 8. Exit
echo.
set /p choice=Select Option:

if "%choice%"=="1" goto dns
if "%choice%"=="2" goto flush
if "%choice%"=="3" goto ipconfig
if "%choice%"=="4" goto pingtest
if "%choice%"=="5" goto trace
if "%choice%"=="6" goto sysinfo
if "%choice%"=="7" goto clean
if "%choice%"=="8" exit

goto menu

:dns
cls
set /p host=Enter domain:
nslookup %host%
pause
goto menu

:flush
cls
ipconfig /flushdns
pause
goto menu

:ipconfig
cls
ipconfig /all
pause
goto menu

:pingtest
cls
set /p host=Enter host:
ping %host%
pause
goto menu

:trace
cls
set /p host=Enter host:
tracert %host%
pause
goto menu

:sysinfo
cls
systeminfo
pause
goto menu

:clean
cls
echo Cleaning temporary files...
del /f /s /q "%TEMP%\*" >nul 2>&1
echo Done.
pause
goto menu
