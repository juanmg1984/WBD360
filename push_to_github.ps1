# Data360 Embed — Push a GitHub
# Ejecutá este script en PowerShell desde la carpeta data360-embed

$token = "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"
$repo  = "https://juanmg1984:$token@github.com/juanmg1984/WBD360.git"

git init
git config user.name  "Juan"
git config user.email "juanmg1984@gmail.com"
git branch -M main
git add .
git commit -m "feat: initial MVP — Data360 Embed widget"
git remote add origin $repo
git push -u origin main

Write-Host ""
Write-Host "✅ Push exitoso! Repo: https://github.com/juanmg1984/WBD360" -ForegroundColor Green
Write-Host ""
Write-Host "Próximo paso — habilitar GitHub Pages:" -ForegroundColor Cyan
Write-Host "  1. Abrí https://github.com/juanmg1984/WBD360/settings/pages"
Write-Host "  2. Source: Deploy from a branch"
Write-Host "  3. Branch: main / (root)"
Write-Host "  4. Save"
Write-Host ""
Write-Host "En ~2 minutos el configurador estará en:" -ForegroundColor Cyan
Write-Host "  https://juanmg1984.github.io/WBD360/configurador.html" -ForegroundColor Yellow
