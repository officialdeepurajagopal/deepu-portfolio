#!/bin/bash

# SSH Deployment Setup Script
# This script helps you set up GitHub Pages deployment using SSH

echo "🚀 GitHub Pages SSH Deployment Setup"
echo "====================================="
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: Please run this script from the deepu-website directory"
    exit 1
fi

# Check if SSH key exists
if [ ! -f ~/.ssh/id_ed25519.pub ] && [ ! -f ~/.ssh/id_rsa.pub ]; then
    echo "⚠️  No SSH key found!"
    echo ""
    echo "Generating new SSH key..."
    ssh-keygen -t ed25519 -C "beingdeepurajagopal@gmail.com" -f ~/.ssh/id_ed25519 -N ""
    echo ""
    echo "✅ SSH key generated!"
    echo ""
fi

# Load SSH key
echo "🔑 Loading SSH key..."
eval "$(ssh-agent -s)" > /dev/null 2>&1
ssh-add ~/.ssh/id_ed25519 2>/dev/null || ssh-add ~/.ssh/id_rsa 2>/dev/null

# Display public key
echo ""
echo "📋 Your SSH Public Key:"
echo "========================"
if [ -f ~/.ssh/id_ed25519.pub ]; then
    cat ~/.ssh/id_ed25519.pub
elif [ -f ~/.ssh/id_rsa.pub ]; then
    cat ~/.ssh/id_rsa.pub
fi
echo ""
echo "========================"
echo ""

# Test GitHub connection
echo "🔍 Testing GitHub SSH connection..."
if ssh -T git@github.com 2>&1 | grep -q "successfully authenticated"; then
    echo "✅ GitHub SSH connection working!"
    echo ""
else
    echo "⚠️  GitHub SSH not configured yet"
    echo ""
    echo "📝 Next steps:"
    echo "1. Copy the public key above"
    echo "2. Go to: https://github.com/settings/keys"
    echo "3. Click 'New SSH key'"
    echo "4. Paste your key and save"
    echo "5. Run this script again to test"
    echo ""
    exit 1
fi

# Check if remote exists
if git remote get-url origin &> /dev/null; then
    CURRENT_URL=$(git remote get-url origin)
    echo "ℹ️  Remote repository already configured:"
    echo "   $CURRENT_URL"
    echo ""

    # Check if it's SSH or HTTPS
    if [[ $CURRENT_URL == git@github.com:* ]]; then
        echo "✅ Already using SSH!"
    else
        echo "⚠️  Currently using HTTPS. Switch to SSH?"
        read -p "Switch to SSH? (y/n): " -n 1 -r
        echo ""
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            git remote set-url origin git@github.com:officialdeepurajagopal/DeepuWebPage.git
            echo "✅ Switched to SSH!"
        fi
    fi
    echo ""

    # Ask to push
    read -p "Push to GitHub now? (y/n): " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "📤 Pushing to GitHub..."
        git push origin main
        echo ""
        echo "✅ Push complete!"
        echo ""
        echo "🌐 Your website:"
        echo "   https://officialdeepurajagopal.github.io/DeepuWebPage/"
    fi
else
    echo "📝 Remote not configured yet"
    echo ""
    echo "Next steps:"
    echo "1. Create repository on GitHub: https://github.com/new"
    echo "2. Name it: DeepuWebPage"
    echo "3. Make it Public"
    echo "4. Then run:"
    echo ""
    echo "   git remote add origin git@github.com:officialdeepurajagopal/DeepuWebPage.git"
    echo "   git push -u origin main"
    echo ""
fi

