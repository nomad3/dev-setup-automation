# 🚀 Development Environment Automation

A comprehensive setup for a modern development environment on macOS, featuring automated installation of tools, IDE configurations, and productivity enhancements.

## 📋 Overview

This repository contains scripts, configurations, and documentation for setting up a complete development environment with:

- **Development Tools**: Git, Node.js, Python, Rust, Go, Docker, and more
- **IDE Configuration**: Cursor (VS Code-based) with optimized settings and snippets
- **Productivity Tools**: Shell customization, Git configuration, and development utilities
- **Code Quality Tools**: Linters, formatters, and security scanners
- **Container & Cloud Tools**: Docker, Kubernetes tools, and cloud CLI utilities

## 🛠️ Tools Installed

### Core Development Tools
- **Git** - Version control with custom configuration
- **Node.js & npm** - JavaScript runtime and package manager
- **Python** - Python interpreter with pip and virtual environments
- **Rust** - Systems programming language with Cargo
- **Go** - Google's programming language
- **Ruby** - Dynamic programming language

### Development Utilities
- **Homebrew** - Package manager for macOS
- **Oh My Zsh** - Shell framework with custom theme and plugins
- **fzf** - Fuzzy finder for command line
- **ripgrep** - Fast text search
- **bat** - Cat with syntax highlighting
- **exa** - Modern ls replacement
- **jq** - JSON processor
- **yq** - YAML processor

### Code Quality & Security
- **cargo-audit** - Rust security scanner
- **cargo-geiger** - Rust dependency analyzer
- **cargo-bloat** - Rust binary size analyzer
- **cargo-asm** - Rust assembly viewer

### Container & Cloud Tools
- **Docker Desktop** - Container platform
- **Lens** - Kubernetes IDE
- **Rancher Desktop** - Kubernetes management
- **kubectl** - Kubernetes command line tool
- **helm** - Kubernetes package manager

### IDE & Editor Configuration
- **Cursor** - AI-powered code editor with comprehensive configuration
  - Custom themes and icon packs
  - Optimized keybindings for productivity
  - Language-specific code snippets
  - Enhanced search and file management

## 📁 Repository Structure

```
dev-setup-automation/
├── README.md                    # This file
├── setup-dev-env.sh            # Main setup script
├── configs/
│   ├── cursor/                 # Cursor IDE configuration
│   │   ├── settings.json       # Editor settings
│   │   ├── keybindings.json   # Custom keybindings
│   │   └── snippets/          # Code snippets
│   ├── git/                   # Git configuration
│   │   ├── .gitconfig         # Global Git settings
│   │   ├── .gitignore_global  # Global ignore patterns
│   │   └── .gitmessage        # Commit message template
│   └── shell/                 # Shell configuration
│       └── .zshrc             # Zsh configuration
├── scripts/                   # Utility scripts
└── docs/                     # Documentation
```

## 🚀 Quick Start

### Prerequisites
- macOS (tested on macOS 14+)
- Administrator privileges
- Internet connection

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/dev-setup-automation.git
   cd dev-setup-automation
   ```

2. **Run the setup script:**
   ```bash
   chmod +x setup-dev-env.sh
   ./setup-dev-env.sh
   ```

3. **Restart your terminal** to apply all changes

## �� Configuration Details

### Cursor IDE Configuration

The Cursor configuration includes:

#### Settings (`settings.json`)
- **Editor**: JetBrains Mono font, optimized spacing, bracket pair colorization
- **Theme**: One Dark Pro with Material Icon Theme
- **File Management**: Auto-save, smart exclusions, proper encoding
- **Search**: Optimized exclusions for node_modules, build folders
- **Terminal**: Zsh integration with custom styling

#### Keybindings (`keybindings.json`)
- **AI Commands**: `Cmd+I`, `Cmd+Shift+I`, `Cmd+Shift+L` for Cursor AI
- **Navigation**: Quick file switching, symbol search, command palette
- **Editing**: Multi-cursor, line operations, code folding
- **Debugging**: Breakpoints, step-through, variable inspection
- **Terminal**: Toggle, split, new terminal shortcuts

#### Code Snippets
- **JavaScript**: Functions, loops, imports, async patterns
- **Python**: Classes, decorators, context managers, type hints
- **TypeScript**: Interfaces, types, generics, utility types

### Git Configuration

#### Global Settings (`.gitconfig`)
- **User Info**: Configured with your details
- **Core Settings**: Line ending handling, editor preferences
- **Aliases**: Shortcuts for common Git operations
- **Colors**: Enhanced output with colors and formatting
- **Pager**: Improved diff and log viewing

#### Commit Template (`.gitmessage`)
- **Structure**: Type, scope, description, body, footer
- **Types**: feat, fix, docs, style, refactor, test, chore
- **Validation**: Automatic format checking

#### Global Ignore (`.gitignore_global`)
- **OS Files**: .DS_Store, Thumbs.db, desktop.ini
- **IDE Files**: .vscode, .idea, *.swp, *.swo
- **Build Files**: dist/, build/, node_modules/
- **Logs**: *.log, npm-debug.log*, yarn-debug.log*

### Shell Configuration (`.zshrc`)

#### Oh My Zsh Setup
- **Theme**: Powerlevel10k with custom configuration
- **Plugins**: Git, zsh-autosuggestions, zsh-syntax-highlighting
- **Aliases**: Shortcuts for common commands

#### Development Tools
- **Node Version Manager**: nvm for Node.js version management
- **Python**: pyenv for Python version management
- **Rust**: Cargo environment setup
- **Go**: GOPATH and GOROOT configuration

#### Productivity Features
- **Fuzzy Finder**: fzf integration for file and command search
- **Syntax Highlighting**: Enhanced command line experience
- **Auto-completion**: Intelligent command suggestions
- **History**: Improved command history management

## 🔧 Customization

### Adding New Tools

To add a new tool to the setup:

1. **Add to the script**: Update `setup-dev-env.sh` with installation commands
2. **Add configuration**: Create config files in the appropriate directory
3. **Update documentation**: Add the tool to this README

### Modifying Configurations

Each configuration file can be customized:

- **Cursor**: Edit files in `configs/cursor/`
- **Git**: Modify files in `configs/git/`
- **Shell**: Update `configs/shell/.zshrc`

### Environment-Specific Settings

The setup script detects your environment and applies appropriate configurations:

- **macOS**: Optimized for Apple Silicon and Intel processors
- **Shell**: Zsh with Oh My Zsh framework
- **Package Manager**: Homebrew for macOS

## 🧪 Testing

### Verification Commands

After installation, verify the setup:

```bash
# Check installed tools
node --version
python --version
rustc --version
go version
docker --version

# Check Git configuration
git config --list

# Check Cursor configuration
ls -la ~/Library/Application\ Support/Cursor/User/

# Check shell configuration
echo $ZSH_VERSION
```

### Common Issues

#### Permission Errors
```bash
# Fix Homebrew permissions
sudo chown -R $(whoami) /opt/homebrew
```

#### Path Issues
```bash
# Reload shell configuration
source ~/.zshrc
```

#### Tool Not Found
```bash
# Check if tool is in PATH
which <tool-name>
echo $PATH
```

## 📚 Additional Resources

### Documentation
- [Homebrew Documentation](https://docs.brew.sh/)
- [Oh My Zsh Wiki](https://github.com/ohmyzsh/ohmyzsh/wiki)
- [Cursor Documentation](https://cursor.sh/docs)
- [Git Documentation](https://git-scm.com/doc)

### Useful Commands

#### Development
```bash
# Create new project
mkdir my-project && cd my-project
git init
npm init -y  # or yarn init

# Python virtual environment
python -m venv venv
source venv/bin/activate

# Rust project
cargo new my-rust-project
cd my-rust-project
```

#### Git Workflow
```bash
# Start new feature
git checkout -b feature/new-feature

# Commit with template
git commit

# Push and create PR
git push origin feature/new-feature
```

#### Docker Operations
```bash
# Build and run container
docker build -t my-app .
docker run -p 3000:3000 my-app

# Kubernetes deployment
kubectl apply -f deployment.yaml
```

## 🤝 Contributing

1. **Fork the repository**
2. **Create a feature branch**: `git checkout -b feature/amazing-feature`
3. **Commit your changes**: `git commit -m 'Add amazing feature'`
4. **Push to the branch**: `git push origin feature/amazing-feature`
5. **Open a Pull Request**

### Development Guidelines

- **Scripts**: Keep scripts idempotent and safe to run multiple times
- **Configurations**: Use relative paths and environment variables
- **Documentation**: Update README for any new tools or configurations
- **Testing**: Test on clean macOS installations

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Homebrew](https://brew.sh/) for macOS package management
- [Oh My Zsh](https://ohmyzsh.sh/) for shell framework
- [Cursor](https://cursor.sh/) for AI-powered development
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k) for terminal theme
- [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme) for file icons

## 📞 Support

For issues, questions, or contributions:

1. **Check existing issues** on GitHub
2. **Create a new issue** with detailed information
3. **Join discussions** in the GitHub Discussions section

---

**Happy Coding! 🎉**
