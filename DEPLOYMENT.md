# Deployment Guide for APEX_MVP

This guide will help you deploy your Office Add-in to GitHub Pages and Azure Web Services.

## Prerequisites

- GitHub account
- Azure subscription (for Azure deployment)
- Node.js and npm installed locally

## GitHub Deployment

### 1. Create GitHub Repository

1. Go to [GitHub](https://github.com) and create a new repository named `APEX_MVP`
2. Make sure it's public (required for GitHub Pages)

### 2. Update Configuration

Before pushing to GitHub, update these files with your actual GitHub username:

- `manifest.xml` - Replace `yourusername` with your actual GitHub username
- `package.json` - Update the repository URL
- `README.md` - Update the clone URL

### 3. Push to GitHub

```bash
# Initialize git repository (if not already done)
git init

# Add all files
git add .

# Commit changes
git commit -m "Initial commit"

# Add remote repository
git remote add origin https://github.com/yourusername/APEX_MVP.git

# Push to GitHub
git push -u origin main
```

### 4. Enable GitHub Pages

1. Go to your repository on GitHub
2. Navigate to Settings > Pages
3. Under "Source", select "GitHub Actions"
4. The GitHub Actions workflow will automatically deploy your site

### 5. Manual Deployment (Optional)

If you want to deploy manually:

```bash
npm run deploy:github
```

## Azure Web Services Deployment

### 1. Create Azure Web App

1. Go to [Azure Portal](https://portal.azure.com)
2. Create a new Web App
3. Choose Node.js as the runtime stack
4. Note down your app name and resource group

### 2. Update Azure Pipeline

Edit `azure-pipelines.yml` and update:
- `Your-Azure-Subscription` with your actual Azure subscription name
- `your-app-name` with your actual Azure Web App name

### 3. Set up Azure DevOps

1. Go to [Azure DevOps](https://dev.azure.com)
2. Create a new project
3. Connect your GitHub repository
4. Create a new pipeline using the `azure-pipelines.yml` file

### 4. Configure Service Connection

1. In Azure DevOps, go to Project Settings > Service connections
2. Create a new Azure Resource Manager service connection
3. Use this service connection name in your pipeline

### 5. Deploy

Push changes to your main branch, and Azure DevOps will automatically build and deploy your app.

## Environment Variables

For production deployment, you may need to set these environment variables:

- `NODE_ENV=production`
- Any API keys or configuration specific to your add-in

## Troubleshooting

### GitHub Pages Issues

1. Check that your repository is public
2. Verify the GitHub Actions workflow is running
3. Check the `gh-pages` branch for deployed files

### Azure Issues

1. Verify your Azure subscription has sufficient credits
2. Check the Azure DevOps pipeline logs
3. Ensure your service connection has proper permissions

### Office Add-in Issues

1. Verify the manifest.xml URLs are correct
2. Test the add-in locally before deployment
3. Check Office Add-in validation: `npm run validate`

## Security Considerations

- Never commit sensitive information like API keys
- Use environment variables for configuration
- Regularly update dependencies
- Enable security scanning in your CI/CD pipeline

## Monitoring

- Set up monitoring for your deployed application
- Configure alerts for downtime or errors
- Monitor usage and performance metrics 