@echo off
setlocal enabledelayedexpansion
title Deploy to GitHub Pages / Vercel / Netlify...
cd /d "%~dp0"

echo ==========================================================
echo    🪐 SK ZeroGravity - GitHub Repository Deployer
echo ==========================================================
echo.

where git >nul 2>nul
if %errorlevel% neq 0 (
    echo Git is not installed or not in PATH on this computer.
    echo Please install Git from https://git-scm.com/
    pause
    exit /b 1
)

echo [1/4] Initializing Git Repository...
if not exist ".git" (
    git init
    git branch -M main
)

echo [2/4] Staging and committing files...
git add .
git commit -m "Deploy SK ZeroGravity Daily Planner"

echo.
set /p REPO_URL="Enter your GitHub Repository URL (e.g. https://github.com/YourUsername/sk-zerogravity.git): "
if "%REPO_URL%"=="" (
    echo No repository URL provided. Aborting.
    pause
    exit /b 1
)

echo [3/4] Adding remote origin...
git remote remove origin >nul 2>nul
git remote add origin %REPO_URL%

echo [4/4] Pushing to GitHub main branch...
git push -u origin main

echo.
echo ==========================================================
echo  Pushed to GitHub!
echo  Next Steps:
echo  1. Go to repository Settings -> Pages.
echo  2. Under 'Build and deployment', set Branch to 'main' and root '/'.
echo  3. Click Save! Your site will be live at:
echo     https://<YOUR_USERNAME>.github.io/<YOUR_REPO_NAME>/
echo ==========================================================
pause
