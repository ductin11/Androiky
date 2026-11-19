@echo off
chcp 65001 >nul
echo ========================================================
echo   DANG KET NOI VA DAY CODE DU AN API LEN GITHUB...
echo ========================================================
echo.
cd /d "D:\Đục Api App\Api"
git push -u origin main
echo.
echo ========================================================
if %ERRORLEVEL% EQU 0 (
    echo   [THANH CONG] Da ket noi va day code len GitHub!
    echo   Toan bo du an da duoc dong bo tu dong.
) else (
    echo   [LUU Y] Neu hien thong bao 404 hoac loi dang nhap:
    echo   Hay bam nut "Create repository" tren trinh duyet
    echo   de tao kho "Androiky" tren tai khoan GitHub cua ban.
)
echo ========================================================
echo.
pause
