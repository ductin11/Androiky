@echo off
chcp 65001 >nul
echo ========================================================
echo       DANG TU DONG DONG BO CODE LEN GITHUB...
echo ========================================================
echo.
cd /d "%~dp0"
powershell -ExecutionPolicy Bypass -File .\auto_sync.ps1
echo.
pause
