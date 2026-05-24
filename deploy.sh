#!/bin/bash
set -e
echo "🌱 Initializing Git..."
git init -b main
git add .
git commit -m "feat: initial TONPUMP launchpad scaffold"
echo ""
echo "🔗 Paste your GitHub repo URL:"
echo "   Example: https://github.com/YOURNAME/tonpump.git"
read -p "> " REPO_URL
git remote add origin "$REPO_URL"
echo "📤 Pushing to GitHub..."
git push -u origin main
echo ""
echo "✅ SUCCESS! Repo live at: $REPO_URL"
echo "💡 Next: npm install && npm run dev"
