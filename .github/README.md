# dotfiles

## Setup and config

Dotfiles make use of a bare git repository, i.e. the git repo data is not stored as part of the working directory. Therefor an alias is defined that is a wrapper around the git command and setting the `--git-dir` and `--work-dir` to different locations.

`dotfiles='git --git-dir=/Users/venek001/.dotfiles/ --work-tree=/Users/venek001'`

`dotfiles config --local status.showUntrackedFiles no`

Checking out the dotfiles is done by:

`dotfiles status`


## Z Shell

- Add auto completion
- Add Homwbrew support
- `alias ls='ls --color'`
- `alias ll='ls -ls'`
- `alias la='ls -lsa'`
- Use nvim: `alias vim=nvim`
- Theming: base 16
- Setup git for dotfiles: `dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`

## Neovim

