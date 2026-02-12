@echo off
echo ===========================================
echo   SOLUGROW FINAL FIX & DEPLOY
echo ===========================================
cd /d "c:\Users\pintu\OneDrive\Desktop\insforge-saas"

echo [1/3] Applying Fixes...
git add .
git commit -m "Fix build config for Cloudflare"

echo.
echo [2/3] Uploading to GitHub...
git push -u origin master

echo.
echo ===========================================
echo   UPLOAD COMPLETE!
echo   1. Go to Cloudflare Pages Dashboard.
echo   2. You will see a new build starting.
echo   3. Add your Custom Domain: solugrow.site
echo ===========================================
pause
