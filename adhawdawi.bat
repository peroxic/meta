@echo off
setlocal

:: Check if RainbowSix.exe is running
tasklist | find /i "RainbowSix.exe" > nul
if %errorlevel% equ 0 (
    echo Please Close R6 Before Loading
    timeout /t 3 > nul
) else (
    echo Loading, Please Wait...
    set /a "wait_time=%random% %% 11 + 5"
    timeout /t %wait_time% > nul
    cls
    echo Closing Loader, Please Open R6
    timeout /t 3 > nul
)

:: Check if BEDaisy.sys is loaded
tasklist | find /i "BESerice.exe" > nul
if %errorlevel% equ 0 (
    echo BE: Daisy, Please Restart.
    timeout /t 3 > nul
)

endlocal
