# Manually append ~/.local/bin to path.
export PATH=~/.local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

#ZSH Theme
ZSH_THEME="spaceship"

#Spaceship prompt modification
SPACESHIP_GCLOUD_SHOW=false

# Plugins
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z ssh-agent gpg-agent)

#homeshick stuff
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

#Sourcing oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

#sourcing nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#####################################
#####################################
###########--ALIASES--###############
#####################################
#####################################

#Homeshick aliases
alias hs='homeshick'
alias updotfiles='homeshick cd dotfiles && git pull && git add . && git commit -m "update - `date +%D_%H:%M`" && git push && cd -'

#k8s aliases
alias kc='kubectl'

#Functional Aliases
alias vim="nvim"
alias cl="clear"
alias open='xdg-open .'
alias grab-ssh-pub='xclip -selection clipboard < ~/.ssh/id_rsa.pub'
alias jmeter='/home/rshiner/.local/share/apache-jmeter-5.3/bin/jmeter'
alias lig='lorem-ipsum-generator -l -s 10 | xclip -selection clipboard'

#system aliases
alias updateall='sudo apt update && sudo apt -y full-upgrade'
alias profile="nvim ~/.zshrc"
alias clear-nvcache="rm -rf ~/.local/share/nvim"
alias getp='sudo pacman -S'
alias rmp='sudo pacman remove'
alias rl="source ~/.zshrc"
alias nvc="nvim ~/.config/nvim"

#JavaScript development aliases
alias ys='yarn start'
alias yd='yarn dev'
alias yi='yarn'
alias yt='yarn test'
alias yr='yarn remove'
alias ya='yarn add'
alias nodeLegacy='export NODE_OPTIONS=--openssl-legacy-provider'
alias npmb='npm run build'
alias npmp='npm run preview'

#git aliases
alias gaa="git add ."
alias gs='git status'
alias gcm="git commit -m "
alias gcl="git clone"
alias gch="git checkout"
alias gbr="git checkout -b"
alias gdl="git branch -d"

#ls aliases
alias ll='ls -al'
alias l='ls -CF'

#docker aliases
alias dstart='sudo systemctl start docker.service && rm ~/.docker/config.json && docker login -u "rshiner"'
alias drmi='docker rmi' 

#other aliases
alias montressor='ssh -p 19422 rhawkins244@192.168.86.94'

########### End of Aliases ###############


homeshick refresh --quiet

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/rshiner/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/rshiner/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/rshiner/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/rshiner/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# bun completions
[ -s "/home/rshiner/.bun/_bun" ] && source "/home/rshiner/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Turso
export PATH="/home/rshiner/.turso:$PATH"
