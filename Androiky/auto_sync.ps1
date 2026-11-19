# Script tự động đồng bộ code lên GitHub
Write-Host "Đang kiểm tra thay đổi..." -ForegroundColor Cyan
git add -A
$status = git status --porcelain
if ($status) {
    $commitMsg = "Auto update: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    git commit -m $commitMsg
    Write-Host "Đã commit: $commitMsg" -ForegroundColor Green
} else {
    Write-Host "Không có file mới để commit." -ForegroundColor Yellow
}

Write-Host "Đang đẩy lên GitHub (origin main)..." -ForegroundColor Cyan
git push -u origin main
if ($LASTEXITCODE -eq 0) {
    Write-Host "Đồng bộ thành công!" -ForegroundColor Green
} else {
    Write-Host "Đồng bộ thất bại, vui lòng kiểm tra kết nối hoặc quyền truy cập." -ForegroundColor Red
}
