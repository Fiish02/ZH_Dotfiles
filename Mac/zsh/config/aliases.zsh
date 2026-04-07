# =============================================================================
# 别名配置
# =============================================================================

# ⚡ 基础系统别名
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'

# 🍺 Homebrew 别名
alias up="brew update && brew upgrade && brew cu -a -y && brew cleanup --prune=all && brew autoremove && brew doctor --quiet"
alias uninstall="brew uninstall --cask --force --zap"

# 刷新 DNS 缓存
alias refresh="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# 🔄 系统管理别名
alias s.="source ~/.zshrc"
alias echopath="echo \$PATH | tr ':' '\n' | nl"
alias c="clear"
alias h="history"

# 🖥️ SSH 连接别名

# 📝 编辑器别名
alias vim='nvim'
alias vi='nvim'
alias nn='nano'

# 🔍 文件搜索别名
alias fdf='fd --type f --hidden --follow'
alias fdd='fd --type d --hidden --follow'
alias rga='rg --smart-case --hidden --follow --no-heading --line-number'

alias rust_up="rustup update stable"
alias lg="lazygit"

# GIT 别名
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gl='git log --oneline --graph --decorate'
alias gco='git checkout'
alias gw='git switch'
alias gb='git branch'
alias gd='git diff'
alias gcl='git clone'
alias gm='git merge'
