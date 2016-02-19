# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ "$EDITOR" == "" ]] ; then
    if command -v nvim >/dev/null 2>&1; then export EDITOR='nvim'; else export EDITOR='vim'; fi
fi
