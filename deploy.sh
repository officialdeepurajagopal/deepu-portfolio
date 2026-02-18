#!/bin/bash

# GitHub Pages Deployment Script
# This script helps you deploy your website to GitHub Pages

echo "🚀 GitHub Pages Deployment Helper"
echo "=================================="
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found. Please run this script from the deepu-website directory."
    exit 1
fi

echo "📋 Current Git Status:"
git status --short
echo ""

# Check if remote origin exists
if git remote get-url origin &> /dev/null; then
    echo "✅ Remote repository already configured:"
    git remote get-url origin
    echo ""

    # Ask if user wants to push
    read -p "Do you want to push your changes to GitHub? (y/n): " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "📤 Pushing to GitHub..."
        git push origin main
        echo ""
        echo "✅ Push complete!"
        echo ""
        echo "🌐 Your website should be live at:"
        echo "   https://officialdeepurajagopal.github.io/DeepuWebPage/"
        echo ""
        echo "⏱️  Note: It may take 1-2 minutes for changes to appear."
    fi
else
    echo "⚠️  Remote repository not configured yet."
    echo ""
    echo "To set up GitHub Pages, follow these steps:"
    echo ""
    echo "1. Create a new repository on GitHub:"
    echo "   - Go to https://github.com/new"
    echo "   - Name: DeepuWebPage"
    echo "   - Make it Public"
    echo "   - Don't initialize with README"
    echo ""
    echo "2. Then run these commands:"
    echo "   git remote add origin https://github.com/officialdeepurajagopal/DeepuWebPage.git"
    echo "   git push -u origin main"
    echo ""
    echo "3. Enable GitHub Pages:"
    echo "   - Go to repository Settings → Pages"
    echo "   - Source: main branch, / (root)"
    echo "   - Save"
    echo ""
    echo "📖 For detailed instructions, see DEPLOYMENT_GUIDE.md"
fi

