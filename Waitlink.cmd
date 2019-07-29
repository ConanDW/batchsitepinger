@setlocal enableextensions enabledelayedexpansion
@echo off
set ipaddr=%1
:loop
set state=up
ping -n 1 !ipaddr! >nul: 2>nul:
if not !errorlevel!==0 set state=down
echo.Link is !state!
if "!state!"=="up" (
  goto :endloop
)
ping -n 6 127.0.0.1 >nul: 2>nul:
goto :loop
:endloop
endlocal