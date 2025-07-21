# Installation Guide

## Prerequisites

- macOS 14+ (tested on Apple Silicon and Intel)
- Administrator privileges
- Internet connection
- At least 10GB free disk space

## Step-by-Step Installation

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/dev-setup-automation.git
cd dev-setup-automation
```

### 2. Run the Setup Script

```bash
chmod +x setup-dev-env.sh
./setup-dev-env.sh
```

The script will:
- Install Homebrew and essential packages
- Set up development languages (Node.js, Python, Rust, Go)
- Configure Git with custom settings
- Install and configure Cursor IDE
- Set up shell environment with Oh My Zsh
- Install container and cloud tools

### 3. Restart Your Terminal

After the script completes, restart your terminal or run:

```bash
source ~/.zshrc
```

### 4. Verify Installation

Run these commands to verify everything is working:

```bash
# Check core tools
node --version
python --version
rustc --version
go version
docker --version

# Check Git configuration
git config --list

# Check Cursor configuration
ls -la ~/Library/Application\ Support/Cursor/User/
```

## Troubleshooting

### Common Issues

#### Permission Errors
```bash
sudo chown -R $(whoami) /opt/homebrew
```

#### Path Issues
```bash
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

#### Homebrew Not Found
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### Cursor Not Installed
Download and install Cursor from: https://cursor.sh/

### Manual Configuration

If the automated setup fails, you can manually configure each component:

1. **Git Configuration**
   ```bash
   cp configs/git/.gitconfig ~/
   cp configs/git/.gitignore_global ~/
   cp configs/git/.gitmessage ~/
   git config --global core.excludesfile ~/.gitignore_global
   git config --global commit.template ~/.gitmessage
   ```

2. **Cursor Configuration**
   ```bash
   cp configs/cursor/settings.json ~/Library/Application\ Support/Cursor/User/
   cp configs/cursor/keybindings.json ~/Library/Application\ Support/Cursor/User/
   cp configs/cursor/snippets/* ~/Library/Application\ Support/Cursor/User/snippets/
   ```

3. **Shell Configuration**
   ```bash
   cp configs/shell/.zshrc ~/
   source ~/.zshrc
   ```

## Post-Installation

### Recommended Next Steps

1. **Install Cursor Extensions**
   - Material Icon Theme
   - One Dark Pro theme
   - Language-specific extensions

2. **Configure Additional Tools**
   - Set up SSH keys for Git
   - Configure AWS CLI if needed
   - Set up Docker Desktop preferences

3. **Customize Your Environment**
   - Modify Cursor settings as needed
   - Add custom Git aliases
   - Configure shell aliases

### Verification Checklist

- [ ] Homebrew installed and working
- [ ] Node.js and npm available
- [ ] Python and pip available
- [ ] Rust and Cargo available
- [ ] Go available
- [ ] Git configured with custom settings
- [ ] Cursor IDE configured
- [ ] Shell environment set up
- [ ] Docker Desktop installed
- [ ] Kubernetes tools available

## Support

If you encounter issues:

1. Check the troubleshooting section above
2. Review the script logs for error messages
3. Create an issue on GitHub with detailed information
4. Include your macOS version and system architecture
