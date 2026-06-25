# Pure-style prompt (https://github.com/sindresorhus/pure) with the Nord palette,
# ported from the zsh Pure config. Two lines: path + git on top, prompt char below.
function fish_prompt
    set -l last_status $status

    # Pure leaves a blank line before each prompt.
    echo ''

    # Python virtualenv (Pure renders this in green; we disable fish's default
    # via VIRTUAL_ENV_DISABLE_PROMPT in config.fish).
    if set -q VIRTUAL_ENV
        set_color A3BE8C
        echo -n (basename $VIRTUAL_ENV)' '
        set_color normal
    end

    # Working directory — full path with ~ for $HOME, like Pure.
    set_color D8DEE9
    echo -n (string replace -r "^$HOME" "~" $PWD)
    set_color normal

    # Git branch + dirty marker.
    set -l branch (command git symbolic-ref --short HEAD 2>/dev/null; or command git rev-parse --short HEAD 2>/dev/null)
    if test -n "$branch"
        set_color 81A1C1            # frost blue
        echo -n " $branch"
        set -l dirty (command git status --porcelain --ignore-submodules 2>/dev/null)
        if test -n "$dirty"
            set_color EBCB8B        # aurora yellow
            echo -n '*'
        end
        set_color normal
    end

    # Prompt character, coloured by the last command's exit status.
    echo ''
    if test $last_status -eq 0
        set_color 88C0D0            # frost — success
    else
        set_color BF616A            # aurora red — error
    end
    echo -n '❯ '
    set_color normal
end
