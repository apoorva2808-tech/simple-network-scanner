@echo off
title Simple Network Scanner
echo Scanning network... please wait...
echo ----------------------------------

:: Loops through IPs 1 to 254. Change 192.168.1. to match your router!
for /L %%i in (1,1,254) do (
    ping -n 1 -w 100 192.168.1.%%i | find "Reply"
)

echo ----------------------------------
echo Scan Complete.
pause