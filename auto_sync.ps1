# Script tự động sao lưu & đồng bộ Git cho dự án Api
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host "       TU DONG DONG BO CODE LEN GIT          " -ForegroundColor Cyan
Write-Host "=============================================" -ForegroundColor Cyan

git add -A
$status = git status --porcelain
if ($status) {
    $timestamp = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
    git commit -m "Auto backup: $timestamp"
    Write-Host "[OK] Da tu dong commit luc $timestamp" -ForegroundColor Green
} else {
    Write-Host "[INFO] Khong co file moi nao can commit." -ForegroundColor Yellow
}

Write-Host "Dang ket noi va day len GitHub..." -ForegroundColor Cyan
git push -u origin main 2>&1
if ($LASTEXITCODE -eq 0) {
    Write-Host "[THANH CONG] Code da duoc day len GitHub thanh cong!" -ForegroundColor Green
} else {
    Write-Host "[LUU Y] Ban da sao luu thanh cong tren may tinh!" -ForegroundColor Yellow
    Write-Host "Neu chua day duoc len GitHub, hay dam bao ban da tao repo tren GitHub hoac cap quyen dang nhap." -ForegroundColor DarkYellow
}
