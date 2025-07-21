# Development Environment Setup with Oh My Zsh
# ===========================================

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
ZSH_THEME_RANDOM_CANDIDATES=( "agnoster" "robbyrussell" "powerlevel10k" "spaceship" "dracula" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  docker
  kubectl
  helm
  terraform
  aws
  python
  node
  npm
  yarn
  golang
  rust
  vscode
  macos
  brew
  history
  extract
  sudo
  copypath
  dirhistory
  web-search
  jsontools
  urltools
  colored-man-pages
  fzf-tab
  z
  git-open
)

source $ZSH/oh-my-zsh.sh

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Starship Prompt (alternative to Oh My Zsh themes)
# eval "$(starship init zsh)"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /opt/homebrew/Cellar/fzf/0.64.0/shell/completion.zsh ] && source /opt/homebrew/Cellar/fzf/0.64.0/shell/completion.zsh
[ -f /opt/homebrew/Cellar/fzf/0.64.0/shell/key-bindings.zsh ] && source /opt/homebrew/Cellar/fzf/0.64.0/shell/key-bindings.zsh

# Direnv
eval "$(direnv hook zsh)"

# Google Cloud SDK
source "/opt/homebrew/share/google-cloud-sdk/path.zsh.inc"
source "/opt/homebrew/share/google-cloud-sdk/completion.zsh.inc"

# Development tool versions
export NODE_VERSION="18.17.0"
export PYTHON_VERSION="3.11"
export GO_VERSION="1.21"
export RUST_VERSION="1.70"

# Cloud provider configurations
export AWS_DEFAULT_REGION="us-west-2"
export AWS_PROFILE="default"
export GCP_PROJECT="your-project-id"
export AZURE_SUBSCRIPTION="your-subscription-id"

# Database configurations
export POSTGRES_HOST="localhost"
export POSTGRES_PORT="5432"
export POSTGRES_USER="postgres"
export POSTGRES_PASSWORD=""
export MONGODB_URI="mongodb://localhost:27017"

# Development server ports
export DEV_PORT="3000"
export API_PORT="8000"
export DB_PORT="5432"
export REDIS_PORT="6379"

# Aliases
alias ll='eza -la'
alias la='eza -a'
alias l='eza'
alias cat='bat'
alias grep='rg'
alias find='fd'
alias top='htop'
alias k='kubectl'
alias kctx='kubectx'
alias kns='kubens'
alias tf='terraform'
alias dc='docker-compose'
alias d='docker'

# Kubernetes aliases
alias kg='kubectl get'
alias kd='kubectl describe'
alias kl='kubectl logs'
alias ke='kubectl exec -it'
alias kpf='kubectl port-forward'
alias kga='kubectl get all'
alias kgp='kubectl get pods'
alias kgs='kubectl get services'
alias kgn='kubectl get nodes'

# Terraform aliases
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfd='terraform destroy'
alias tfw='terraform workspace'
alias tfv='terraform validate'
alias tff='terraform fmt'
alias tfo='terraform output'

# Docker aliases
alias dps='docker ps'
alias dpsa='docker ps -a'
alias di='docker images'
alias dex='docker exec -it'
alias drm='docker rm'
alias drmi='docker rmi'
alias dcp='docker-compose'
alias dcpup='docker-compose up'
alias dcpdown='docker-compose down'
alias dcpbuild='docker-compose build'

# Git aliases (Oh My Zsh provides many, these are additional)
alias gcb='git checkout -b'
alias gpl='git pull'
alias gf='git fetch'
alias gd='git diff'
alias gst='git stash'
alias gstp='git stash pop'
alias grb='git rebase'
alias grbi='git rebase -i'

# AWS aliases
alias aws-vault='aws-vault exec'
alias aws-whoami='aws sts get-caller-identity'

# Development shortcuts
alias dev='cd ~/Development'
alias projects='cd ~/Projects'
alias code='cd ~/Code'
alias work='cd ~/Work'

# Additional aliases for development
alias serve='python3 -m http.server'
alias serve-php='php -S localhost:8000'
alias serve-node='npx serve'
alias serve-python='python3 -m http.server'
alias serve-ruby='ruby -run -e httpd . -p 8000'

# Database aliases
alias psql-dev='psql -h localhost -U postgres'
alias mysql-dev='mysql -h localhost -u root -p'
alias redis-cli-dev='redis-cli -h localhost -p 6379'

# Testing aliases
alias test='npm test'
alias test-watch='npm run test:watch'
alias test-coverage='npm run test:coverage'
alias test-python='python -m pytest'
alias test-go='go test ./...'

# Build aliases
alias build='npm run build'
alias build-prod='npm run build:prod'
alias build-dev='npm run build:dev'

# Linting and formatting
alias lint='npm run lint'
alias lint-fix='npm run lint:fix'
alias format='npm run format'
alias format-python='black . && isort .'
alias format-go='gofmt -w .'

# Docker development
alias docker-dev='docker-compose -f docker-compose.dev.yml'
alias docker-test='docker-compose -f docker-compose.test.yml'
alias docker-prod='docker-compose -f docker-compose.prod.yml'

# Kubernetes development
alias k8s-dev='kubectl config use-context minikube'
alias k8s-prod='kubectl config use-context production'
alias k8s-staging='kubectl config use-context staging'

# Terraform development
alias tf-dev='terraform workspace select dev'
alias tf-staging='terraform workspace select staging'
alias tf-prod='terraform workspace select production'

# Git workflow
alias git-feature='git checkout -b feature/'
alias git-hotfix='git checkout -b hotfix/'
alias git-release='git checkout -b release/'
alias git-squash='git reset --soft HEAD~1'

# Environment variables
export EDITOR='code'
export VISUAL='code'
export PAGER='bat'
export BAT_THEME='Dracula'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# PATH additions
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

# Terraform version management
export PATH="$HOME/.tfenv/bin:$PATH"
export PATH="$HOME/.tgenv/bin:$PATH"

# Go
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export GO111MODULE=on

# Python
export PATH="/opt/homebrew/opt/python@3.11/libexec/bin:$PATH"
export PYTHONPATH="$HOME/.local/lib/python3.11/site-packages:$PYTHONPATH"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Node.js
export PATH="$HOME/.npm-global/bin:$PATH"

# Advanced Functions
function mkcd() {
    mkdir -p "$1" && cd "$1"
}

function k8s-context() {
    kubectl config current-context
}

function aws-profile() {
    aws-vault list
}

function docker-clean() {
    docker system prune -f
    docker volume prune -f
    docker network prune -f
}

function git-clean() {
    git branch --merged | grep -v "\*" | xargs -n 1 git branch -d
    git remote prune origin
}

function tf-workspace-switch() {
    if [ -z "$1" ]; then
        echo "Usage: tf-workspace-switch <workspace-name>"
        return 1
    fi
    terraform workspace select "$1" || terraform workspace new "$1"
}

function k8s-pod-logs() {
    if [ -z "$1" ]; then
        echo "Usage: k8s-pod-logs <pod-name>"
        return 1
    fi
    kubectl logs -f "$1"
}

function dev-server() {
    local port=${1:-3000}
    echo "Starting development server on port $port"
    python3 -m http.server "$port"
}

function weather() {
    curl "wttr.in/${1:-San Francisco}?format=3"
}

function ipinfo() {
    curl "ipinfo.io"
}

function ports() {
    lsof -i -P -n | grep LISTEN
}

# Advanced Development Functions
function create-react-app() {
    npx create-react-app "$1" --template typescript
    cd "$1"
    npm install
}

function create-next-app() {
    npx create-next-app@latest "$1" --typescript --tailwind --eslint
    cd "$1"
    npm install
}

function create-vue-app() {
    npm create vue@latest "$1"
    cd "$1"
    npm install
}

function create-python-env() {
    python3 -m venv "$1"
    source "$1/bin/activate"
    pip install --upgrade pip
}

function create-go-module() {
    mkdir "$1"
    cd "$1"
    go mod init "$1"
    echo "package main" > main.go
    echo "func main() {}" >> main.go
}

function create-rust-project() {
    cargo new "$1"
    cd "$1"
}

function dev-setup() {
    echo "Setting up development environment..."
    
    # Install common development tools
    brew install --cask visual-studio-code
    brew install --cask docker
    brew install --cask postman
    brew install --cask insomnia
    brew install --cask dbeaver-community
    
    # Install CLI tools
    brew install jq yq httpie
    brew install kubectl helm kind
    brew install terraform terragrunt
    brew install awscli azure-cli gcloud
    brew install node python@3.11 go rust
    
    echo "Development environment setup complete!"
}

function dev-cleanup() {
    echo "Cleaning up development environment..."
    
    # Clean Docker
    docker system prune -f
    docker volume prune -f
    
    # Clean npm cache
    npm cache clean --force
    
    # Clean pip cache
    pip cache purge
    
    # Clean Go cache
    go clean -cache -modcache -testcache
    
    # Clean Rust cache
    cargo clean
    
    echo "Cleanup complete!"
}

function dev-status() {
    echo "=== Development Environment Status ==="
    echo "Node.js: $(node --version)"
    echo "npm: $(npm --version)"
    echo "Python: $(python3 --version)"
    echo "Go: $(go version)"
    echo "Rust: $(rustc --version)"
    echo "Docker: $(docker --version)"
    echo "Kubernetes: $(kubectl version --client)"
    echo "Terraform: $(terraform --version)"
    echo "AWS CLI: $(aws --version)"
    echo "Git: $(git --version)"
    echo "====================================="
}

function dev-backup() {
    local backup_dir="$HOME/dev-backup-$(date +%Y%m%d-%H%M%S)"
    mkdir -p "$backup_dir"
    
    # Backup important development files
    cp -r ~/.ssh "$backup_dir/"
    cp -r ~/.aws "$backup_dir/"
    cp -r ~/.kube "$backup_dir/"
    cp ~/.zshrc "$backup_dir/"
    
    echo "Development backup created at: $backup_dir"
}

function dev-restore() {
    local backup_dir="$1"
    if [ -z "$backup_dir" ]; then
        echo "Usage: dev-restore <backup-directory>"
        return 1
    fi
    
    if [ ! -d "$backup_dir" ]; then
        echo "Backup directory not found: $backup_dir"
        return 1
    fi
    
    echo "Restoring development environment from: $backup_dir"
    cp -r "$backup_dir/.ssh" ~/
    cp -r "$backup_dir/.aws" ~/
    cp -r "$backup_dir/.kube" ~/
    cp "$backup_dir/.zshrc" ~/
    
    echo "Restore complete!"
}

# Productivity Functions
function quick-search() {
    local query="$1"
    if [ -z "$query" ]; then
        echo "Usage: quick-search <query>"
        return 1
    fi
    open "https://www.google.com/search?q=$query"
}

function github-search() {
    local query="$1"
    if [ -z "$query" ]; then
        echo "Usage: github-search <query>"
        return 1
    fi
    open "https://github.com/search?q=$query"
}

function stackoverflow-search() {
    local query="$1"
    if [ -z "$query" ]; then
        echo "Usage: stackoverflow-search <query>"
        return 1
    fi
    open "https://stackoverflow.com/search?q=$query"
}

function npm-search() {
    local query="$1"
    if [ -z "$query" ]; then
        echo "Usage: npm-search <package>"
        return 1
    fi
    open "https://www.npmjs.com/search?q=$query"
}

function docker-search() {
    local query="$1"
    if [ -z "$query" ]; then
        echo "Usage: docker-search <image>"
        return 1
    fi
    open "https://hub.docker.com/search?q=$query"
}

# Welcome message
echo "🚀 Oh My Zsh Development Environment Ready!"
echo "📦 Installed tools: Docker, Kubernetes, Terraform, AWS CLI, Azure CLI, GCP SDK"
echo "🔧 Additional tools: Helm, Kind, Minikube, Vault, Consul, Nomad, Ansible"
echo "💻 Shell enhancements: Oh My Zsh, FZF, Ripgrep, Bat, Eza, Htop"
echo ""
echo "Quick commands:"
echo "  k8s-context        - Show current Kubernetes context"
echo "  aws-profile        - List AWS profiles"
echo "  mkcd <dir>         - Create directory and cd into it"
echo "  docker-clean       - Clean up Docker resources"
echo "  git-clean          - Clean up merged branches"
echo "  tf-workspace-switch <name> - Switch/create Terraform workspace"
echo "  k8s-pod-logs <pod> - Follow pod logs"
echo "  dev-server [port]  - Start Python dev server"
echo "  weather [city]     - Get weather info"
echo "  ipinfo             - Get IP information"
echo "  ports              - Show listening ports"
echo "  dev-setup          - Install development tools"
echo "  dev-cleanup        - Clean up development environment"
echo "  dev-status         - Show development environment status"
echo "  dev-backup         - Backup development configuration"
echo "  dev-restore        - Restore development configuration"
echo "  create-react-app   - Create React app with TypeScript"
echo "  create-next-app    - Create Next.js app with TypeScript"
echo "  create-vue-app     - Create Vue.js app"
echo "  create-python-env  - Create Python virtual environment"
echo "  create-go-module   - Create Go module"
echo "  create-rust-project - Create Rust project"
echo "  quick-search       - Search Google"
echo "  github-search      - Search GitHub"
echo "  stackoverflow-search - Search Stack Overflow"
echo "  npm-search         - Search npm packages"
echo "  docker-search      - Search Docker Hub"
echo ""
