# dotfiles

## installation

```sh
git clone https://github.com/SebiH/dotfiles.git ~/.dotfiles && ~/.dotfiles/bootstrap
```

## content

Currently contains configuration files for the following applications:

- ctags
- git
- neovim
- vim
- tmux
- sublime text 3
- zsh

## components

Since this is inspired by [Zach Holman's dotfiles](https://github.com/holman/dotfiles),
there are a few special rules:

- **/bin**: Is added to `$PATH`, commands in there will therefore be globally available
- **\*/\*.zsh** Will be loaded into the zsh environment, regardless of location
- **\*/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **\*/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **\*.symlink** and **\*.xdgconfig** will be symlinked to `$HOME` or `$XDG_CONFIG_HOME`
  (usually ~/.config) when running bootstrap.

