#!/bin/bash

# Development Environment Setup Script
# ===================================

echo "🚀 Setting up comprehensive development environment..."

# Install additional Homebrew packages
echo "📦 Installing additional development tools..."
brew install --cask visual-studio-code
brew install --cask docker
brew install --cask postman
brew install --cask insomnia
brew install --cask dbeaver-community
brew install --cask iterm2
brew install --cask rectangle
brew install --cask alfred

# Install CLI tools
echo "🔧 Installing CLI tools..."
brew install jq yq httpie
brew install kubectl helm kind
brew install terraform terragrunt
brew install awscli azure-cli gcloud
brew install node python@3.11 go rust
brew install bat eza fd ripgrep htop
brew install fzf starship direnv

# Install additional development tools
echo "⚙️ Installing additional development tools..."
brew install --cask ngrok
brew install --cask postman
brew install --cask mongodb-compass
brew install --cask redis-insight
brew install --cask tableplus
brew install --cask figma
brew install --cask notion
brew install --cask slack
brew install --cask discord

# Install VS Code extensions
echo "🔌 Installing VS Code extensions..."
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension bradlc.vscode-tailwindcss
code --install-extension esbenp.prettier-vscode
code --install-extension ms-vscode.vscode-eslint
code --install-extension ms-python.python
code --install-extension golang.go
code --install-extension rust-lang.rust-analyzer
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension hashicorp.terraform
code --install-extension ms-vscode.vscode-json
code --install-extension redhat.vscode-yaml
code --install-extension ms-vscode.vscode-markdown
code --install-extension vscode-icons-team.vscode-icons
code --install-extension dracula-theme.theme-dracula
code --install-extension ms-vscode.vscode-git
code --install-extension eamodio.gitlens
code --install-extension christian-kohler.path-intellisense
code --install-extension formulahendry.auto-rename-tag
code --install-extension bradlc.vscode-tailwindcss
code --install-extension ms-vscode.vscode-typescript-next

# Install Node.js global packages
echo "📦 Installing Node.js global packages..."
npm install -g @angular/cli
npm install -g @vue/cli
npm install -g create-react-app
npm install -g typescript
npm install -g ts-node
npm install -g nodemon
npm install -g pm2
npm install -g yarn
npm install -g pnpm
npm install -g nx
npm install -g @nestjs/cli
npm install -g prisma
npm install -g vercel
npm install -g netlify-cli
npm install -g firebase-tools
npm install -g @aws-amplify/cli

# Install Python packages
echo "🐍 Installing Python packages..."
pip3 install --upgrade pip
pip3 install black isort flake8 mypy
pip3 install pytest pytest-cov
pip3 install jupyter notebook
pip3 install pandas numpy matplotlib seaborn
pip3 install requests beautifulsoup4
pip3 install fastapi uvicorn
pip3 install django djangorestframework
pip3 install flask flask-restful
pip3 install sqlalchemy alembic
pip3 install redis celery
pip3 install boto3 awscli
pip3 install google-cloud-storage
pip3 install azure-storage-blob

# Install Go packages
echo "🐹 Installing Go packages..."
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install github.com/air-verse/air@latest
go install github.com/goreleaser/goreleaser@latest
go install github.com/securecodewarrior/git-secrets@latest

# Install Rust packages
echo "🦀 Installing Rust packages..."
cargo install cargo-edit
cargo install cargo-watch
cargo install cargo-audit
cargo install cargo-tarpaulin
cargo install cargo-expand
cargo install cargo-tree
cargo install cargo-outdated
cargo install cargo-asm
cargo install cargo-bloat
cargo install cargo-geiger

# Install additional tools
echo "🛠️ Installing additional tools..."
brew install --cask docker
brew install --cask minikube
brew install --cask lens
brew install --cask rancher
brew install --cask aws-vpn-client
brew install --cask azure-vpn-client
brew install --cask google-chrome
brew install --cask firefox
brew install --cask brave-browser

# Configure FZF
echo "🔍 Configuring FZF..."
/opt/homebrew/bin/fzf --install

# Install Oh My Zsh plugins (if not already installed)
echo "🔌 Installing Oh My Zsh plugins..."
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

if [ ! -d "$ZSH_CUSTOM/plugins/zsh-z" ]; then
    git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
fi

if [ ! -d "$ZSH_CUSTOM/plugins/fzf-tab" ]; then
    git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
fi

# Install themes
echo "🎨 Installing themes..."
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
fi

if [ ! -d "$ZSH_CUSTOM/themes/spaceship-prompt" ]; then
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
fi

if [ ! -d "$ZSH_CUSTOM/themes/dracula" ]; then
    git clone https://github.com/dracula/zsh.git "$ZSH_CUSTOM/themes/dracula"
fi

# Create development directories
echo "📁 Creating development directories..."
mkdir -p ~/Development
mkdir -p ~/Projects
mkdir -p ~/Code
mkdir -p ~/Work
mkdir -p ~/Documents/Development

# Configure Git
echo "🔧 Configuring Git..."
git config --global init.defaultBranch main
git config --global pull.rebase false
git config --global push.default current
git config --global core.editor "code --wait"

# Set up SSH key (if not exists)
if [ ! -f ~/.ssh/id_rsa ]; then
    echo "🔑 Setting up SSH key..."
    ssh-keygen -t rsa -b 4096 -C "$(git config --global user.email)" -f ~/.ssh/id_rsa -N ""
    echo "SSH key created. Add it to your GitHub/GitLab account."
fi

# Configure shell
echo "🐚 Configuring shell..."
# Make sure zsh is the default shell
if [ "$SHELL" != "/bin/zsh" ]; then
    chsh -s /bin/zsh
    echo "Default shell changed to zsh. Please restart your terminal."
fi

echo ""
echo "✅ Development environment setup complete!"
echo ""
echo "🎉 Your development environment is now ready with:"
echo "   • Oh My Zsh with powerful plugins and themes"
echo "   • All major programming languages and tools"
echo "   • Cloud development tools (AWS, GCP, Azure)"
echo "   • Database tools and GUIs"
echo "   • VS Code with essential extensions"
echo "   • Enhanced shell experience with FZF, Starship, etc."
echo ""
echo "🚀 Next steps:"
echo "   1. Restart your terminal"
echo "   2. Run 'dev-status' to check all tools"
echo "   3. Configure your cloud credentials"
echo "   4. Start coding!"
echo "" 