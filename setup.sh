#!/bin/bash

# ArchiSpace Setup Script for macOS/Linux

echo ""
echo "========================================"
echo "ArchiSpace React + Node.js Setup"
echo "========================================"
echo ""

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "ERROR: Node.js is not installed or not in PATH"
    echo "Please install Node.js from https://nodejs.org/"
    exit 1
fi

echo "✓ Node.js found"
node --version
echo ""

# Install root dependencies
echo "Installing root dependencies..."
npm install
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to install root dependencies"
    exit 1
fi
echo "✓ Root dependencies installed"
echo ""

# Install backend dependencies
echo "Installing backend dependencies..."
cd backend
npm install
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to install backend dependencies"
    exit 1
fi
echo "✓ Backend dependencies installed"
cd ..
echo ""

# Install client dependencies
echo "Installing client dependencies..."
cd client
npm install
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to install client dependencies"
    exit 1
fi
echo "✓ Client dependencies installed"
cd ..
echo ""

echo "========================================"
echo "Setup Complete!"
echo "========================================"
echo ""
echo "To start the application:"
echo "  npm start"
echo ""
echo "The application will open at:"
echo "  Frontend: http://localhost:3000"
echo "  Backend: http://localhost:5000"
echo ""
echo "========================================"
echo "GitHub Setup (Optional)"
echo "========================================"
echo ""
echo "To initialize Git repository:"
echo "  npm run git:setup"
echo ""
echo "After creating a GitHub repo, add remote:"
echo "  npm run git:remote"
echo ""
echo "To push to GitHub:"
echo "  npm run deploy:github"
echo ""
