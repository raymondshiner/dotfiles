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
# HOMESHICK CONFIG
# ----------------------------------------
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

alias hs='homeshick'
alias updotfiles='homeshick cd dotfiles && git pull && git add . && git commit -m "update - $(date +%D_%H:%M)" && git push && cd -'
homeshick refresh --quiet

# ----------------------------------------
# NODE / NVM
# ----------------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ----------------------------------------
# BUN / YARN / TURSO / GCLOUD
# ----------------------------------------
export BUN_IN_

