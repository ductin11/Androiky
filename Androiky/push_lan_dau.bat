@echo off
chcp 65001 >nul
echo ========================================================
echo   DANG KET NOI VA DAY CODE LEN GITHUB (ORIGIN MAIN)...
echo   (Trinh duyet se tu mo de ban xac nhan 1 lan duy nhat)
echo ========================================================
echo.
cd /d "D:\Đục Api App\Api\Androiky"
git push -u origin main
echo.
echo ========================================================
if %ERRORLEVEL% EQU 0 (
    echo   [THANH CONG] Da ket noi va day code len GitHub!
    echo   Tu bay gio tro di, he thong se tu dong 100%%.
) else (
    echo   [THAT BAI] Vui long kiem tra lai quyen truy cap GitHub.
)
echo ========================================================
echo.
pause
