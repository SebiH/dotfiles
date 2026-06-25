# ~/.config/fish/config.fish — mirrors ~/.dotfiles/zsh setup.
# fish already provides, with zero config, what zsh needed plugins for:
#   • autosuggestions (ghost text)      • syntax highlighting
#   • history-substring search          • smartcase, fuzzy tab completion
#   • auto-cd, shared history, pushd     (all on by default)

# ── Interactive-only block ───────────────────────────────────────────────────
# Everything that only matters for an interactive prompt lives here so scripts
# (`fish -c …`) stay fast and quiet.
if status is-interactive
    # ── PATH ──────────────────────────────────────────────────────────────────
    # Homebrew (Apple Silicon). Sets PATH, MANPATH, HOMEBREW_* env.
    if test -x /opt/homebrew/bin/brew
        /opt/homebrew/bin/brew shellenv fish | source
    end
    # fish_add_path is idempotent and prepends in the order given.
    fish_add_path -g $HOME/.local/bin
    fish_add_path -g $HOME/.dotfiles/bin
    fish_add_path -g $HOME/.lmstudio/bin
    # NOTE: zsh also had a leading "./bin" (per-directory bin on PATH). Omitted
    # on purpose — "." on PATH is a minor security smell. Re-add if you rely on it.

    # ── Editor ────────────────────────────────────────────────────────────────
    if not set -q EDITOR
        if type -q nvim
            set -gx EDITOR nvim
        else
            set -gx EDITOR vim
        end
    end
    set -gx VISUAL $EDITOR

    # ── Colours / tool themes ─────────────────────────────────────────────────
    set -gx CLICOLOR true
    set -gx LSCOLORS exfxcxdxbxegedabagacad
    type -q bat; and set -gx BAT_THEME Nord
    # The Pure prompt renders the venv itself; suppress fish's default prefix.
    set -gx VIRTUAL_ENV_DISABLE_PROMPT true

    # ── Aliases & abbreviations ───────────────────────────────────────────────
    # fish abbreviations expand inline as you type (nicer than aliases for
    # things you want to see/edit before running).
    abbr -a -- reload! 'source ~/.config/fish/config.fish'
    abbr -a -- ..      'cd ..'
    abbr -a rsync 'rsync --progress'

    # eza: modern ls (brew install eza)
    if type -q eza
        alias ls 'eza --icons --group-directories-first'
        alias ll 'eza -la --icons --group-directories-first --git'
        alias lt 'eza --tree --icons -L 2'
    else
        alias grep 'grep --color=auto'
    end

    # bat: syntax-highlighted cat
    type -q bat; and alias cat 'bat --style=plain'

    # Neovim
    if type -q nvim
        alias vim 'nvim'
        alias vimdiff 'nvim -d'
    end

    # Privileged
    if test (id -u) -ne 0
        if type -q nvim
            alias svim 'sudo -E nvim'
        else
            alias svim 'sudo -E vim'
        end
    end

    # ── bash-style history expansion: !! (last command) and !$ (last arg) ──────
    # fish has no bang-history, so bind ! and $ to expand only when they follow
    # a lone "!". Canonical recipe from the fish FAQ.
    function __history_previous_command
        switch (commandline -t)
            case "!"
                commandline -t -- $history[1]
                commandline -f repaint
            case "*"
                commandline -i -- !
        end
    end
    function __history_previous_command_arguments
        switch (commandline -t)
            case "!"
                commandline -t -- ""
                commandline -f history-token-search-backward
            case "*"
                commandline -i -- '$'
        end
    end
    # Bind in both the default mode and vi's insert mode so it works whichever
    # key bindings are active (harmless if vi mode is never used).
    bind ! __history_previous_command
    bind '$' __history_previous_command_arguments
    bind -M insert ! __history_previous_command
    bind -M insert '$' __history_previous_command_arguments
    # Tip: Alt+. also cycles through previous commands' last arguments.

    # Edit the current command line in $EDITOR, like zsh's edit-command-line.
    # fish ships this as `edit_command_buffer` (bound to Alt+E / Alt+V by
    # default); also bind the readline Ctrl+x Ctrl+e / Ctrl+x e from the zsh
    # config for muscle memory.
    bind \cx\ce edit_command_buffer
    bind \cxe edit_command_buffer
    bind -M insert \cx\ce edit_command_buffer
    bind -M insert \cxe edit_command_buffer
end
