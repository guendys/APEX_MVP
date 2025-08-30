# APEX_MVP - Office Add-in

A Microsoft Office Add-in (Word taskpane) built with JavaScript and Webpack.

## Features

- Word document integration
- Taskpane interface
- Modern JavaScript with Babel transpilation
- Webpack bundling and development server
- **GitHub Pages deployment ready**

## Prerequisites

- Node.js (version 16 or higher)
- npm or yarn
- Microsoft Word (desktop or online)
- Office 365 account (for testing)

## Installation

1. Clone the repository:
```bash
git clone https://github.com/guendys/APEX_MVP.git
cd APEX_MVP
```

2. Install dependencies:
```bash
npm install
```

3. Install development certificates:
```bash
npm run dev-certs
```

## Development

### Start Development Server
```bash
npm run dev-server
```

### Start the Add-in
```bash
npm start
```

### Build for Production
```bash
npm run build
```

### Validate Manifest
```bash
npm run validate
```

## Project Structure

```
APEX_MVP/
├── assets/              # Icons and images
├── src/
│   ├── commands/        # Command UI
│   └── taskpane/        # Taskpane UI
├── manifest.xml         # Office Add-in manifest
├── webpack.config.js    # Webpack configuration
└── package.json         # Dependencies and scripts
```

## Deployment

### GitHub Pages
This project is configured for automatic deployment to GitHub Pages. The built files will be deployed to the `gh-pages` branch.

**Live Site**: https://guendys.github.io/APEX_MVP

### Azure Web Services
For Azure deployment, the project includes Azure-specific configuration files.

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

MIT License - see LICENSE file for details

## Support

For issues and questions, please create an issue in the GitHub repository. 