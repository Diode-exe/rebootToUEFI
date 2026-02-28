@echo off
:: Check for admin rights
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Rebooting to UEFI...
    shutdown /r /fw /t 0
) else (
    echo Error: Please run this script as an Administrator.
    pause
)