# ----------------------------------------
# BASIC ENVIRONMENT SETUP
# ----------------------------------------

# Use ~/.local/bin first
export PATH="$HOME/.local/bin:$PATH"

# ZSH + Theme
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"
SPACESHIP_GCLOUD_SHOW=false

# ZSH Plugins
plugins=(git z ssh-agent gpg-agent)

# Oh My Zsh init
source $ZSH/oh-my-zsh.sh

# ----------------------------------------
# Homeshick 
# ----------------------------------------
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

alias hs='homeshick'
alias updotfiles='homeshick cd dotfiles && git pull && git add . && git commit -m "update - $(date +%D_%H:%M)" && git push && cd -'
homeshick refresh --quiet

# ----------------------------------------
# Tools
# ----------------------------------------

# Cursor CLI
export PATH="$HOME/.local/bin:$PATH"

#Turso
export PATH="$HOME/.turso:$PATH"

# Google Cloud SDK
[ -f "$HOME/Downloads/google-cloud-sdk/path.zsh.inc" ] && source "$HOME/Downloads/google-cloud-sdk/path.zsh.inc"
[ -f "$HOME/Downloads/google-cloud-sdk/completion.zsh.inc" ] && source "$HOME/Downloads/google-cloud-sdk/completion.zsh.inc"

# ----------------------------------------
# Package Managers
# ----------------------------------------

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

#Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

#Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# pnpm
export PNPM_HOME="/home/sirlexicon/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac


# ----------------------------------------
# Editor Settings
# ----------------------------------------
export EDITOR=nvim
export VISUAL=nvim

# ----------------------------------------
# Functional Aliases
# ----------------------------------------

# General
alias rl="source ~/.zshrc"
alias cl="clear"
alias profile="nvim ~/.zshrc"
alias open='xdg-open'
alias vim='nvim'
alias nvc='nvim ~/.config/nvim'
alias grab-ssh-pub='xclip -selection clipboard < ~/.ssh/id_rsa.pub'
alias clear-nvcache="rm -rf ~/.local/share/nvim"

# System
alias getp='sudo apt install -y'
alias rmp='sudo apt remove'
alias updateall='sudo apt update && sudo apt -y full-upgrade'

# Git
alias gaa="git add ."
alias gs='git status'
alias gcm='git commit -m '
alias gcl='git clone'
alias gch='git checkout'
alias gbr='git checkout -b'
alias gdl='git branch -d'
alias gdr='git push origin --delete' # optional

# Docker
alias dstart='sudo systemctl start docker.service && rm ~/.docker/config.json && docker login -u "rshiner"'
alias drmi='docker rmi'

# K8s
alias kc='kubectl'

# JS / Yarn / NPM
alias ys='yarn start'
alias yd='yarn dev'
alias yi='yarn'
alias yt='yarn test'
alias yr='yarn remove'
alias ya='yarn add'
alias nodeLegacy='export NODE_OPTIONS=--openssl-legacy-provider'
alias npmb='npm run build'
alias npmp='npm run preview'

# Misc Dev
alias lig='lorem-ipsum-generator -l -s 10 | xclip -selection clipboard'

# SSH
alias montressor='ssh -p 19422 rhawkins244@192.168.86.94'

# LS
alias ll='ls -al'
alias l='ls -CF'

# Tmux
alias tn='tmux new -s dev'
alias ta='tmux attach-session -t'
alias tl='tmux list-sessions'

# ----------------------------------------
# Hotkey Binds
# ----------------------------------------
bindkey -s '^o' 'nvim\n'      # Ctrl+O opens Neovim
bindkey -s '^t' 'tmux\n'      # Ctrl+T opens tmux

############## END OF FILE ###############
