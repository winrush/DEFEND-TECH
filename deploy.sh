#!/bin/bash

# DefendTech Solutions - GitHub Pages Deployment Script

echo "🚀 Deploying DefendTech Solutions to GitHub Pages..."

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Not a git repository. Please initialize git first."
    exit 1
fi

# Check if remote origin exists
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "❌ No remote origin found. Please add the GitHub repository URL."
    echo "Run: git remote add origin https://github.com/winrush/DEFEND-TECH.git"
    exit 1
fi

# Add all files
echo "📁 Adding files to git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Deploy DefendTech Solutions website

- Added responsive cybersecurity website
- Implemented dark/light mode toggle
- Added scroll reveal animations
- Included contact form and service packages
- Optimized for GitHub Pages deployment"

# Push to main branch
echo "⬆️ Pushing to GitHub..."
git push -u origin main

echo "✅ Deployment complete!"
echo "🌐 Your site will be available at: https://winrush.github.io/DEFEND-TECH"
echo ""
echo "Note: GitHub Pages may take a few minutes to update."
