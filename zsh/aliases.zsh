alias reload!='. ~/.zshrc'
alias rsync='rsync --progress'
alias ..='cd ..'

# eza: modern ls replacement with icons and git awareness
# brew install eza
if command -v eza >/dev/null; then
  alias ls='eza --icons --group-directories-first'
  alias ll='eza -la --icons --group-directories-first --git'
  alias lt='eza --tree --icons -L 2'
else
  alias grep='grep --color=auto'
fi

# bat: syntax-highlighted cat, Nord theme
# brew install bat
if command -v bat >/dev/null; then
  export BAT_THEME="Nord"
  alias cat='bat --style=plain'
fi

# fd and rg are already installed; surface them explicitly
# fd: modern find  (brew install fd)
# rg: modern grep  (brew install ripgrep)

# Neovim
if command -v nvim >/dev/null; then
  alias vim='nvim'
  alias vimdiff='nvim -d'
fi

# Privileged commands
if [[ $UID -ne 0 ]]; then
  command -v pacmatic >/dev/null && alias update='sudo pacmatic -Syu'
  command -v nvim     >/dev/null && alias svim='sudo -E nvim' || alias svim='sudo -E vim'
fi
