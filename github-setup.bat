@echo off
REM Quick GitHub setup script for Windows
REM This script sets up Git and GitHub connection for ArchiSpace

echo.
echo ==========================================
echo ArchiSpace GitHub Setup
echo ==========================================
echo.

REM Check if git is installed
where git >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Git is not installed or not in PATH
    echo Download from: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo ✓ Git found
git --version
echo.

REM Get user inputs
set /p github_username="Enter your GitHub username: "
set /p email="Enter your email: "
set /p repo_name="Enter repository name [archispace]: "

if "%repo_name%"=="" set repo_name=archispace

echo.
echo Initializing Git repository...
git init
git config user.email "%email%"
git config user.name "%github_username%"

echo ✓ Git initialized
echo.

echo Staging files...
git add .

echo Creating initial commit...
git commit -m "Initial commit: ArchiSpace React + Node.js"

echo ✓ Initial commit created
echo.

echo ==========================================
echo Setup Complete!
echo ==========================================
echo.
echo Next steps:
echo.
echo 1. Create a new repository on GitHub:
echo    - Go to: https://github.com/new
echo    - Name: %repo_name%
echo    - DO NOT initialize with README/gitignore/license
echo.
echo 2. In terminal, run:
echo    git remote add origin https://github.com/%github_username%/%repo_name%.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo 3. Or just copy-paste these in terminal:
echo    git remote add origin https://github.com/%github_username%/%repo_name%.git
echo    git branch -M main ^&^& git push -u origin main
echo.
echo For more details, see: GITHUB_SETUP.md
echo.
pause
