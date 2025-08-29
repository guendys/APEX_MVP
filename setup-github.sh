#!/bin/bash

# APEX_MVP GitHub Setup Script
echo "🚀 Setting up APEX_MVP for GitHub deployment..."

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install git first."
    exit 1
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed. Please install Node.js and npm first."
    exit 1
fi

# Get GitHub username
echo "📝 Please enter your GitHub username:"
read github_username

if [ -z "$github_username" ]; then
    echo "❌ GitHub username is required."
    exit 1
fi

# Update files with GitHub username
echo "🔧 Updating configuration files..."

# Update manifest.xml
sed -i.bak "s/yourusername/$github_username/g" manifest.xml
rm manifest.xml.bak

# Update package.json
sed -i.bak "s/yourusername/$github_username/g" package.json
rm package.json.bak

# Update README.md
sed -i.bak "s/yourusername/$github_username/g" README.md
rm README.md.bak

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Initialize git repository
echo "🔧 Initializing git repository..."
git init

# Add all files
git add .

# Initial commit
git commit -m "Initial commit: APEX_MVP Office Add-in"

# Add remote repository
git remote add origin https://github.com/$github_username/APEX_MVP.git

echo "✅ Setup complete!"
echo ""
echo "📋 Next steps:"
echo "1. Create a new repository on GitHub named 'APEX_MVP'"
echo "2. Make sure the repository is public (required for GitHub Pages)"
echo "3. Run: git push -u origin main"
echo "4. Go to your repository Settings > Pages and enable GitHub Actions"
echo ""
echo "🔗 Your repository URL will be: https://github.com/$github_username/APEX_MVP"
echo "🌐 Your deployed site will be: https://$github_username.github.io/APEX_MVP"
echo ""
echo "📖 For detailed instructions, see DEPLOYMENT.md" 