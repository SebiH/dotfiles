alias reload!='. ~/.zshrc'
alias make=make_colour

#Modified commands
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rsync='rsync --progress'

#New commands
alias ..='cd ..'
alias open='xdg-open'

#Privileged commands
if [ $UID -ne 0 ]; then
    alias sudo='sudo '
    alias svim='sudo -E vim'
fi
