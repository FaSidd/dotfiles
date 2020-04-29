# General aliases
alias ls='ls -G'
alias c='clear'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias .2='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias lsl='ls -l'
alias lsa='ls -a'
alias vim='/usr/local/bin/nvim'

# System Alliases
alias shutdown='sudo shutdown -h now'
alias halt='sudo halt'
alias reboot='sudo reboot'

# Directory & File Alliases
alias report='open build/reports/jacoco/test/html/index.html'
alias sdp='cd ~/UH/COSC\ 4354/wednesday'
alias plato='open report/index.html'

# git aliases
alias guc='git reset --soft HEAD~1'

# Ranger launch
alias rgr='ranger'

# Nvim init.vim
alias viminit='vim ~/.config/nvim/init.vim'

# Tmux Aliases
alias tls='tmux ls'
alias ta='tmux attach'
alias tat='tmux attach -t'

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
