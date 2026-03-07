# Pure prompt — https://github.com/sindresorhus/pure
# brew install pure

for _pure_dir in "${HOMEBREW_PREFIX}/share/zsh/site-functions" \
                  "/usr/local/share/zsh/site-functions" \
                  "${HOME}/.zsh/pure"; do
  [[ -d $_pure_dir ]] && fpath+=("$_pure_dir")
done
unset _pure_dir
autoload -U promptinit
promptinit
prompt pure

# Nord colour scheme
zstyle ':prompt:pure:path'            color '#D8DEE9'  # snow storm
zstyle ':prompt:pure:git:branch'      color '#81A1C1'  # frost blue
zstyle ':prompt:pure:git:dirty'       color '#EBCB8B'  # aurora yellow
zstyle ':prompt:pure:git:stash'       color '#D08770'  # aurora orange
zstyle ':prompt:pure:prompt:success'  color '#88C0D0'  # frost — ❯
zstyle ':prompt:pure:prompt:error'    color '#BF616A'  # aurora red
zstyle ':prompt:pure:execution_time'  color '#4C566A'  # polar night dim
zstyle ':prompt:pure:virtualenv'      color '#A3BE8C'  # aurora green — python venv
