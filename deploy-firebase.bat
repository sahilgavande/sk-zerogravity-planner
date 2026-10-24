@echo off
setlocal enabledelayedexpansion
title Deploying SK ZeroGravity to Firebase Hosting...
cd /d "%~dp0"

echo ==========================================================
echo    🪐 SK ZeroGravity - Firebase Hosting Deployer
echo ==========================================================
echo.

REM Check if firebase CLI exists in directory or PATH
where firebase >nul 2>nul
if %errorlevel% neq 0 (
    if not exist "firebase.exe" (
        echo [1/3] Downloading Google Firebase CLI Standalone Binary...
        powershell -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; (New-Object System.Net.WebClient).DownloadFile('https://firebase.tools/bin/win/instant/latest', 'firebase.exe')"
        if not exist "firebase.exe" (
            echo Failed to download Firebase CLI. Please check your internet connection.
            pause
            exit /b 1
        )
        echo Firebase CLI downloaded successfully!
    )
    set "FIREBASE_BIN=%~dp0firebase.exe"
) else (
    set "FIREBASE_BIN=firebase"
)

echo.
echo [2/3] Authenticating with Google Firebase...
echo A browser window will open for you to sign in with your Google account.
"%FIREBASE_BIN%" login

echo.
set /p PROJECT_ID="Enter your Firebase Project ID (from console.firebase.google.com) [e.g. sk-zerogravity-app]: "
if "%PROJECT_ID%"=="" (
    set "PROJECT_ID=sk-zerogravity"
)

echo.
echo [3/3] Deploying project to https://!PROJECT_ID!.web.app ...
"%FIREBASE_BIN%" deploy --project !PROJECT_ID! --only hosting

echo.
echo ==========================================================
echo 🚀 DEPLOYMENT COMPLETED!
echo Your web app is live at:
echo    https://!PROJECT_ID!.web.app
echo    https://!PROJECT_ID!.firebaseapp.com
echo ==========================================================
pause
