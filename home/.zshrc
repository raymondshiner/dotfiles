# Manually append ~/.local/bin to path.
export PATH=~/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/rshiner/.oh-my-zsh"

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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/rshiner/.local/google-cloud-sdk/path.zsh.inc' ]; then . '/home/rshiner/.local/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/rshiner/.local/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/rshiner/.local/google-cloud-sdk/completion.zsh.inc'; fi

#####################################
#####################################
###########--ALIASES--###############
#####################################
#####################################


#Flex Aliases
alias wd='cd ~/stc/react/phoenix-frontend'
alias we='cd ~/stc/react/phoenix-apollo-graph-api'

#Homeshick aliases
alias hs='homeshick'
alias updotfiles='homeshick cd dotfiles && git pull && git add . && git commit -m "update - `date +%D_%H:%M`" && git push && cd -'
alias upkeys='homeshick cd keys && git pull && git add . && git commit -m "update - `date +%D_%H:%M`" && git push && cd -'
alias upscripts='homeshick cd scripts && git pull && git add . && git commit -m "update - `date +%D_%H:%M`" && git push && cd -'

#k8s aliases
alias kc='kubectl'

#Navigation Aliases
alias home="cd ~"
alias gits="cd ~/git"
alias dl="cd ~/Downloads"
alias stc="cd ~/stc"
alias rp="cd ~/git/react-playground"
alias todo="cd ~/todo"
alias pdo="nvim ~/todo/personal.todo"
alias wdo="nvim ~/todo/work.todo"

#Functional Aliases
alias vim="nvim"
alias wvpn="nmcli con up id StorageCraft"
alias wvpnd="nmcli con down id StorageCraft"
alias cl="clear"
alias open='xdg-open .'
alias ctls='sudo systemctl start'
alias grab-ssh-pub='xclip -selection clipboard < ~/.ssh/id_rsa.pub'
alias grab-ssh-pubstc='xclip -selection clipboard < ~/.ssh/id_storagecraft.pub'
alias jmeter='/home/rshiner/.local/share/apache-jmeter-5.3/bin/jmeter'
alias lig='lorem-ipsum-generator -l -s 10 | xclip -selection clipboard'

#vs code alias
# old alias - alias code='GTK_IM_MODULE="xim" code'
alias code='code-insiders'

#teamviewer aliases
alias tvservice='echo "starting service" && sudo killall teamviewerd && sudo systemctl enable --now teamviewerd'


#system aliases
alias updateall='sudo apt update && sudo apt -y full-upgrade'
alias capsescape='setxkbmap -option caps:escape'
alias profile="nvim ~/.zshrc"
alias getp='sudo apt install'
alias rmp='sudo apt remove'
alias rl="source ~/.zshrc"



#postgress aliases
alias pgu='sudo -iu postgres'
alias pgstart='sudo systemctl enable postgresql.service --now'

#JavaScript development aliases
alias cyp='yarn cypress open'
alias ys='yarn start'
alias yi='yarn'
alias yt='yarn test'
alias yr='yarn remove'
alias ya='yarn add'
alias cra='npx create-react-app'

alias frontend='export CWD_X=$(pwd); cd ~/stc/git/react/phoenix-frontend && pm2 start && cd ~/stc/git/react/phoenix-apollo-graph-api && pm2 start && cd $CWD_X'

#pm2 aliases
alias pm2k='pm2 delete all' 
alias pm2m='pm2 monit'
alias pm2d='pm2 delete'
alias pm2s='pm2 start'

#git aliases
alias gaa="git add ."
alias gcm="git commit -m "
alias gcl="git clone"
alias gch="git checkout"
alias gbr="git checkout -b"
alias gdl="git branch -d"

#ls aliases
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -la'
alias l='ls -CF'
alias loc='cd ~/.local'


#docker aliases
alias dstart='sudo systemctl start docker.service'
alias dimage='docker image list'
alias dps='docker ps'
alias email-microservice='docker run --rm -p 51044:80 email-microservice'
alias drmi='docker rmi' 

homeshick refresh --quiet

