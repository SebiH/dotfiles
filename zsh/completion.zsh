# Case-insensitive: lowercase input matches uppercase completions
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Don't complete on paste (tabs in pasted text shouldn't trigger completion)
zstyle ':completion:*' insert-tab pending

# Colour completions using LS_COLORS
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Show completion menu when there are 2 or more candidates
zstyle ':completion:*' menu select=2

# Group completions and label each group
zstyle ':completion:*:descriptions' format '%B%F{cyan}── %d ──%f%b'
zstyle ':completion:*:warnings'     format '%F{red}no matches for: %d%f'
