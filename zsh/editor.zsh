if [[ -z $EDITOR ]]; then
  command -v nvim >/dev/null && export EDITOR='nvim' || export EDITOR='vim'
fi
export VISUAL=$EDITOR
