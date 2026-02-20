#!/bin/bash

# Quick GitHub setup script for macOS/Linux
# This script sets up Git and GitHub connection for ArchiSpace

set -e

echo ""
echo "==========================================
echo "ArchiSpace GitHub Setup"
echo "==========================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "ERROR: Git is not installed"
    echo "Install Git from: https://git-scm.com/"
    exit 1
fi

echo "✓ Git found"
git --version
echo ""

# Get user inputs
read -p "Enter your GitHub username: " github_username
read -p "Enter your email: " email
read -p "Enter repository name [archispace]: " repo_name
repo_name=${repo_name:-archispace}

echo ""
echo "Initializing Git repository..."
git init
git config user.email "$email"
git config user.name "$github_username"

echo "✓ Git initialized"
echo ""

echo "Staging files..."
git add .

echo "Creating initial commit..."
git commit -m "Initial commit: ArchiSpace React + Node.js"

echo "✓ Initial commit created"
echo ""

echo "==========================================="
echo "Setup Complete!"
echo "==========================================="
echo ""
echo "Next steps:"
echo ""
echo "1. Create a new repository on GitHub:"
echo "   - Go to: https://github.com/new"
echo "   - Name: $repo_name"
echo "   - DO NOT initialize with README/gitignore/license"
echo ""
echo "2. In terminal, run:"
echo "   git remote add origin https://github.com/$github_username/$repo_name.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "3. Or just copy-paste these in terminal:"
echo "   git remote add origin https://github.com/$github_username/$repo_name.git"
echo "   git branch -M main && git push -u origin main"
echo ""
echo "For more details, see: GITHUB_SETUP.md"
echo ""
