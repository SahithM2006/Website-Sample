@echo off
REM ArchiSpace Setup Script for Windows

echo.
echo ========================================
echo ArchiSpace React + Node.js Setup
echo ========================================
echo.

REM Check if Node.js is installed
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Node.js is not installed or not in PATH
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

echo ✓ Node.js found
node --version
echo.

REM Install root dependencies
echo Installing root dependencies...
call npm install
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Failed to install root dependencies
    pause
    exit /b 1
)
echo ✓ Root dependencies installed
echo.

REM Install backend dependencies
echo Installing backend dependencies...
cd backend
call npm install
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Failed to install backend dependencies
    cd ..
    pause
    exit /b 1
)
echo ✓ Backend dependencies installed
cd ..
echo.

REM Install client dependencies
echo Installing client dependencies...
cd client
call npm install
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Failed to install client dependencies
    cd ..
    pause
    exit /b 1
)
echo ✓ Client dependencies installed
cd ..
echo.

echo ========================================
echo Setup Complete!
echo ========================================
echo.
echo To start the application:
echo   npm start
echo.
echo The application will open at:
echo   Frontend: http://localhost:3000
echo   Backend: http://localhost:5000
echo.echo "========================================"
echo "GitHub Setup (Optional)"
echo "========================================"
echo.
echo "To initialize Git repository:"
echo "  npm run git:setup"
echo.
echo "After creating a GitHub repo, add remote:"
echo "  npm run git:remote -- https://github.com/YOUR_USERNAME/archispace.git"
echo.
echo "To push to GitHub:"
echo "  npm run deploy:github"
echo.pause
