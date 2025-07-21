# Configuration Guide

## Overview

This document details the configuration files and settings used in the development environment automation.

## Cursor IDE Configuration

### Settings (`configs/cursor/settings.json`)

The Cursor settings are optimized for productivity and include:

#### Editor Settings
- **Font**: JetBrains Mono with ligatures
- **Font Size**: 14px with 1.5 line height
- **Tab Size**: 2 spaces with auto-detection
- **Word Wrap**: Enabled for better readability
- **Bracket Pair Colorization**: Enabled for better code navigation

#### Theme and Appearance
- **Color Theme**: One Dark Pro
- **Icon Theme**: Material Icon Theme
- **Minimap**: Enabled with character rendering disabled
- **Rulers**: 80 and 120 character guides

#### File Management
- **Auto Save**: After 1 second delay
- **Trim Whitespace**: Automatic trailing whitespace removal
- **Insert Final Newline**: Automatic file ending
- **Encoding**: UTF-8 with auto-guessing disabled

#### Search and Exclusions
- **Excluded Patterns**: node_modules, build folders, cache directories
- **Global Ignore Files**: Enabled for better search performance
- **Smart Case**: Case-insensitive search by default

#### Terminal Configuration
- **Default Shell**: zsh for macOS
- **Font**: JetBrains Mono with ligatures
- **Scrollback**: 10,000 lines
- **Smooth Scrolling**: Enabled

### Keybindings (`configs/cursor/keybindings.json`)

#### AI Commands
- `Cmd+I`: Open Cursor AI agent
- `Cmd+Shift+I`: Open AI agent in editor context
- `Cmd+Shift+L`: Open AI chat mode

#### Navigation
- `Cmd+P`: Quick file open
- `Cmd+Shift+P`: Command palette
- `Cmd+Shift+O`: Go to symbol
- `F12`: Go to definition
- `Shift+F12`: Find references

#### Editing
- `Cmd+D`: Add selection to next find match
- `Cmd+Shift+D`: Select all occurrences
- `Alt+Cmd+Up/Down`: Add cursor above/below
- `Cmd+Shift+K`: Delete line
- `Cmd+Shift+Up/Down`: Move line up/down

#### Code Folding
- `Cmd+Option+[`: Fold current region
- `Cmd+Option+]`: Unfold current region
- `Cmd+K Cmd+0`: Fold all
- `Cmd+K Cmd+J`: Unfold all

#### Terminal and Panels
- `Ctrl+``: Toggle terminal
- `Cmd+Shift+``: New terminal
- `Cmd+B`: Toggle sidebar
- `Cmd+J`: Toggle panel

#### Debugging
- `F5`: Start debugging
- `Shift+F5`: Stop debugging
- `F9`: Toggle breakpoint
- `F10`: Step over
- `F11`: Step into
- `Shift+F11`: Step out

### Code Snippets

#### JavaScript (`configs/cursor/snippets/javascript.json`)
- Console logging shortcuts
- Function declarations and arrow functions
- Async/await patterns
- Import/export statements
- Class declarations
- Template literals and destructuring

#### Python (`configs/cursor/snippets/python.json`)
- Function and class definitions
- Import statements
- Control flow structures
- Exception handling
- List and dictionary comprehensions
- Decorators and context managers

#### TypeScript (`configs/cursor/snippets/typescript.json`)
- Interface and type definitions
- Function signatures with types
- Generic functions
- Union and intersection types
- Utility types (Partial, Pick, Omit)
- Enum declarations

## Git Configuration

### Global Settings (`configs/git/.gitconfig`)

#### User Configuration
```ini
[user]
    name = Your Name
    email = your.email@example.com
```

#### Core Settings
```ini
[core]
    editor = code --wait
    autocrlf = input
    excludesfile = ~/.gitignore_global
    pager = cat
```

#### Color Settings
```ini
[color]
    ui = auto
[color "branch"]
    current = yellow reverse
    local = yellow
    remote = green
[color "diff"]
    meta = yellow bold
    frag = magenta bold
    old = red bold
    new = green bold
```

#### Alias Configuration
```ini
[alias]
    st = status
    co = checkout
    br = branch
    ci = commit
    ca = commit -a
    unstage = reset HEAD --
    last = log -1 HEAD
    visual = !gitk
```

### Commit Template (`configs/git/.gitmessage`)

The commit template enforces conventional commit format:

```
# <type>(<scope>): <description>
#
# <body>
#
# <footer>
```

Types include:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes
- `refactor`: Code refactoring
- `test`: Test additions/changes
- `chore`: Maintenance tasks

### Global Ignore (`configs/git/.gitignore_global`)

Excludes common files from version control:
- OS files (.DS_Store, Thumbs.db)
- IDE files (.vscode, .idea)
- Build artifacts (dist/, build/, node_modules/)
- Log files (*.log)
- Temporary files (*.tmp, *.temp)

## Shell Configuration

### Zsh Configuration (`configs/shell/.zshrc`)

#### Oh My Zsh Setup
```bash
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
```

#### Development Environment Variables
```bash
# Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Go
export GOPATH="$HOME/go"
export GOROOT="/opt/homebrew/opt/go/libexec"
export PATH="$GOPATH/bin:$GOROOT/bin:$PATH"
```

#### Aliases and Functions
```bash
# Git aliases
alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'

# Development aliases
alias dev='cd ~/dev'
alias projects='cd ~/projects'
alias docs='cd ~/Documents'

# Utility aliases
alias ll='exa -la'
alias la='exa -a'
alias cat='bat'
alias grep='rg'
```

#### Fuzzy Finder Integration
```bash
# fzf configuration
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git/*'"
```

## Customization

### Adding Custom Snippets

To add custom snippets for a language:

1. Create a new file in `configs/cursor/snippets/`
2. Follow the JSON format:
```json
{
  "Snippet Name": {
    "prefix": "trigger",
    "body": [
      "snippet content",
      "with placeholders ${1:placeholder}"
    ],
    "description": "Snippet description"
  }
}
```

### Modifying Keybindings

To add custom keybindings:

1. Edit `configs/cursor/keybindings.json`
2. Add new entries following the format:
```json
{
  "key": "cmd+shift+key",
  "command": "workbench.action.command",
  "when": "editorTextFocus"
}
```

### Git Configuration

To customize Git settings:

1. Edit `configs/git/.gitconfig`
2. Add new sections or modify existing ones
3. Update user information with your details

### Shell Customization

To customize the shell:

1. Edit `configs/shell/.zshrc`
2. Add custom aliases, functions, or environment variables
3. Modify Oh My Zsh theme or plugins

## Best Practices

### Configuration Management
- Keep configurations version controlled
- Use relative paths where possible
- Document custom modifications
- Test configurations on clean installations

### Performance Optimization
- Exclude unnecessary files from searches
- Use appropriate file watchers
- Optimize terminal scrollback settings
- Configure appropriate Git ignore patterns

### Security Considerations
- Don't commit sensitive information
- Use environment variables for secrets
- Regularly update tools and dependencies
- Review and audit installed packages

## Troubleshooting

### Common Configuration Issues

#### Cursor Settings Not Applied
```bash
# Restart Cursor completely
# Check file permissions
ls -la ~/Library/Application\ Support/Cursor/User/
```

#### Git Configuration Not Working
```bash
# Verify Git configuration
git config --list --show-origin
# Check file locations
ls -la ~/.gitconfig
```

#### Shell Configuration Issues
```bash
# Reload shell configuration
source ~/.zshrc
# Check Oh My Zsh installation
ls -la ~/.oh-my-zsh
```

### Performance Issues

#### Slow File Search
- Review search exclusions
- Check file watcher limits
- Optimize ignore patterns

#### Terminal Performance
- Reduce scrollback buffer
- Disable unnecessary plugins
- Optimize prompt rendering

#### Git Performance
- Use shallow clones for large repos
- Configure appropriate ignore patterns
- Optimize Git configuration for your workflow
