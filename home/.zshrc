# Path to your oh-my-zsh installation.
export ZSH="/home/rshiner/.oh-my-zsh"

#ZSH Theme
ZSH_THEME="spaceship"

# Plugins
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z)

#homeshick stuff
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

#Sourcing oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh


#Tilix Instatiation
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/rshiner/.local/google-cloud-sdk/path.zsh.inc' ]; then . '/home/rshiner/.local/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/rshiner/.local/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/rshiner/.local/google-cloud-sdk/completion.zsh.inc'; fi

#source nvm
source /usr/share/nvm/init-nvm.sh

#####################################
#####################################
###########--ALIASES--###############
#####################################
#####################################


#Flex Aliases
alias kc='kubectl'
alias web='cd ~/git/personal-website'
alias wd='cd ~/stc/git/react/phoenix-frontend'
alias we='cd ~/stc/git/react/phoenix-apollo-graph-api'
alias wds='wd && ys'
alias cb='cd ~/stc/git/react/cloud-backup'
alias sd='cd ~/stc/git/react/phoenix-apollo-graph-api'
alias ws='cd ~/stc/git/java/frontend-service'
alias jarvis='cd ~/stc/git/react/jarvis-frontend/'

#Homeshick aliases
alias hsp='homeshick pull'
alias hsr='homeshick refresh'
alias hsc='homeshick check'
alias hst='homeshick track'
alias hcd='homeshick cd'
alias updotfiles='homeshick cd dotfiles && git pull && git add . && git commit -m "update - `date +%D_%H:%M`" && git push && cd -'
alias upkeys='homeshick cd keys && git pull && git add . && git commit -m "update - `date +%D_%H:%M`" && git push && cd -'
alias upvscode='homeshick cd vscode && git pull && git add . && git commit -m "update - `date +%D_%H:%M`" && git push && cd -'


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
alias jt="jetbrains-toolbox"
alias vpn="sudo pia -s 44"
alias wvpn="nmcli con up id StorageCraft"
alias wvpnd="nmcli con down id StorageCraft"
alias cl="clear"
alias open='xdg-open .'
alias ctls='sudo systemctl start'
alias grab-ssh-pub='xclip -selection clipboard < ~/.ssh/id_rsa.pub'

#teamviewer aliases
alias tvservice='echo "starting service" && sudo killall teamviewerd && sudo systemctl enable --now teamviewerd'


#system aliases
alias updateall='yay -Syyu --noconfirm --useask'
alias capsescape='setxkbmap -option caps:escape'
alias profile="nvim ~/.zshrc"
alias getp="yay -Sy"
alias rmp="yay -R"
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

