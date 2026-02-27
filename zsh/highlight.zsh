# Homebrew-installed ZSH plugins, loaded if present.
# To install: brew install zsh-syntax-highlighting zsh-autosuggestions zsh-history-substring-search
#
# Nord palette reference:
#   Polar Night: #2E3440 #3B4252 #434C5E #4C566A
#   Snow Storm:  #D8DEE9 #E5E9F0 #ECEFF4
#   Frost:       #8FBCBB #88C0D0 #81A1C1 #5E81AC
#   Aurora:      #BF616A #D08770 #EBCB8B #A3BE8C #B48EAD

# ── Syntax Highlighting ──────────────────────────────────────────────────────
() {
  local f
  for f in /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh \
            /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh; do
    [[ -f $f ]] || continue
    source $f

    ZSH_HIGHLIGHT_STYLES[default]='fg=#D8DEE9'
    ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#BF616A'          # red — bad command
    ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#81A1C1,bold'     # blue — if/while/do
    ZSH_HIGHLIGHT_STYLES[alias]='fg=#88C0D0'                  # frost — known alias
    ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#88C0D0'
    ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#88C0D0'
    ZSH_HIGHLIGHT_STYLES[builtin]='fg=#81A1C1'                # blue — cd, echo…
    ZSH_HIGHLIGHT_STYLES[function]='fg=#88C0D0'               # frost — functions
    ZSH_HIGHLIGHT_STYLES[command]='fg=#88C0D0'                # frost — executables
    ZSH_HIGHLIGHT_STYLES[precommand]='fg=#A3BE8C,italic'      # green — sudo, env
    ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#81A1C1'       # blue — ; && ||
    ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#EBCB8B,italic'   # yellow — dir as cmd
    ZSH_HIGHLIGHT_STYLES[path]='fg=#D8DEE9,underline'
    ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#D8DEE9'
    ZSH_HIGHLIGHT_STYLES[globbing]='fg=#EBCB8B'               # yellow — * ? **
    ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#B48EAD'      # purple — !foo
    ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#8FBCBB'   # teal — -f
    ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#8FBCBB'   # teal — --flag
    ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#A3BE8C' # green — 'str'
    ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#A3BE8C' # green — "str"
    ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#A3BE8C'
    ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#EBCB8B' # yellow — $var in string
    ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#EBCB8B'
    ZSH_HIGHLIGHT_STYLES[assign]='fg=#D8DEE9'                 # = in VAR=val
    ZSH_HIGHLIGHT_STYLES[redirection]='fg=#81A1C1'            # blue — > >> |
    ZSH_HIGHLIGHT_STYLES[comment]='fg=#4C566A,italic'         # dim — # comment
    ZSH_HIGHLIGHT_STYLES[arg0]='fg=#88C0D0'
    break
  done
}

# ── Autosuggestions ──────────────────────────────────────────────────────────
() {
  local f
  for f in /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh \
            /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh; do
    [[ -f $f ]] || continue
    source $f
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#4C566A"  # nord3 — dim ghost text
    ZSH_AUTOSUGGEST_STRATEGY=(history completion)  # history first, then completion
    break
  done
}

# ── History Substring Search ─────────────────────────────────────────────────
# Must be sourced after zsh-syntax-highlighting.
() {
  local f
  for f in /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh \
            /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh; do
    [[ -f $f ]] || continue
    source $f
    HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=#88C0D0,bold'    # frost
    HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='fg=#BF616A,bold' # red
    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down
    break
  done
}
