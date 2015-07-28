ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sebi"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git svn)

source $HOME/.oh-my-zsh/oh-my-zsh.sh

# Start tmux
# If not running interactively, do not do anything
#[[ $- != *i* ]] && return
[[ $TERM != screen* ]] && exec tmux -2

# Set color
export TERM=xterm-256color

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sebi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
# Entries from .bashrc

# Map capslock to Escape if theres a display available (disable on ssh)
#if [ -n "${DISPLAY+x}" ]; then
#    xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
#fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
