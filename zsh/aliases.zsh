alias reload!='. ~/.zshrc'
alias make=make_colour

#Modified commands
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rsync='rsync --progress'

#New commands
alias ..='cd ..'
alias open='xdg-open'

# Use neovim instead of vim, if possible
command -v nvim >/dev/null 2>&1 && { echo >&2 "Using neovim!"; alias vim='nvim' }

#Privileged commands
if [ $UID -ne 0 ]; then
    alias sudo='sudo '

    # Archlinux / app specific alias
    if command -v pacmatic >/dev/null 2>&1; then alias update='sudo pacmatic -Syu '; fi

    # use nivm if installed
    if command -v nvim >/dev/null 2>&1; then alias svim='sudo -E nvim'; else alias svim='sudo -E vim'; fi
fi
