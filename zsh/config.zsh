export CLICOLOR=true
export LSCOLORS="exfxcxdxbxegedabagacad"

# Custom functions
fpath=($ZSH/functions $fpath)
autoload -U $ZSH/functions/*(:t)

# History
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt EXTENDED_HISTORY       # save timestamp and duration
setopt INC_APPEND_HISTORY     # write to history immediately, don't wait for shell exit
setopt SHARE_HISTORY          # share history across sessions
setopt HIST_VERIFY            # don't execute immediately on history expansion
setopt HIST_IGNORE_ALL_DUPS   # remove older duplicates when a new entry is added
setopt HIST_REDUCE_BLANKS     # strip extra blanks from history entries
setopt HIST_IGNORE_SPACE      # don't save commands prefixed with a space

# Behaviour
setopt AUTO_CD                # type a directory name to cd into it
setopt AUTO_PUSHD             # cd pushes to directory stack (navigate with cd -)
setopt PUSHD_IGNORE_DUPS      # no duplicates in the stack
setopt PUSHD_SILENT           # don't print the stack on every cd
setopt CORRECT                # suggest corrections for mistyped commands
setopt COMPLETE_IN_WORD       # complete from both ends of a word
setopt COMPLETE_ALIASES       # complete aliases
setopt PROMPT_SUBST
setopt NO_BG_NICE
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS
setopt LOCAL_TRAPS

# Keybindings
bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D'  beginning-of-line
bindkey '^[[5C'  end-of-line
bindkey '^[[3~'  delete-char
bindkey '^?'     backward-delete-char
