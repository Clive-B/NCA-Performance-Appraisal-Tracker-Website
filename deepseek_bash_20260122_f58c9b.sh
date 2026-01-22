#!/bin/bash

# Build and deploy to GitHub Pages

echo "🚀 Building and deploying to GitHub Pages..."

# Create a temporary directory for deployment
mkdir -p deploy

# Copy all necessary files
cp index.html deploy/
cp README.md deploy/
cp CNAME deploy/ 2>/dev/null || true

# Check if gh-pages is installed
if ! command -v gh-pages &> /dev/null; then
    echo "Installing gh-pages..."
    npm install --save-dev gh-pages
fi

# Deploy to GitHub Pages
npx gh-pages -d deploy

echo "✅ Deployed successfully to GitHub Pages!"
echo "🌐 Your site is live at: https://[your-username].github.io/[repository-name]/"