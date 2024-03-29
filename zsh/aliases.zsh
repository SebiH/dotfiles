alias reload!='. ~/.zshrc'

#Modified commands
#alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rsync='rsync --progress'

#New commands
alias ..='cd ..'
#alias open='xdg-open'

# Use neovim instead of vim, if possible
command -v nvim >/dev/null 2>&1 && { alias vim='nvim' }
command -v nvim >/dev/null 2>&1 && { alias vimdiff='nvim -d' }

#Privileged commands
if [ $UID -ne 0 ]; then

    # Archlinux / app specific alias
    if command -v pacmatic >/dev/null 2>&1; then alias update='sudo pacmatic -Syu '; fi

    # use nivm if installed
    if command -v nvim >/dev/null 2>&1; then alias svim='sudo -E nvim'; else alias svim='sudo -E vim'; fi
fi


export LC_ALL=en_US.UTF-8
