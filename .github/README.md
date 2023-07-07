[![License: CC0-1.0](https://licensebuttons.net/l/zero/1.0/80x15.png)](http://creativecommons.org/publicdomain/zero/1.0/)

# dotfiles

## Setup and configuration

Dotfiles make use of a bare git repository, i.e. the git repo data is not
stored as part of the working directory. Therefor an alias is defined that is a
wrapper around the git command and setting the `--git-dir` and `--work-dir` to
different locations.

Start by setting up an alias for working with a bare repository:

```bash
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

Configure the repository to not track files. If file tracking is allowed you
will see all untracked files in your root and that's probably a lot.

```bash
dotfiles config --local status.showUntrackedFiles no
```

Checking out the dotfiles is done by:

```bash
mkdir $HOME/.dotfiles
dotfiles init
dotfiles config --global init.defaultBranch main
dotfiles remote add origin git@github.com:venekamp/dotfiles.git
dotfiles pull origin main
```

## Base16 shell colour theme

In order to get a better colour theme for the shell, check out the following repo.
The zshell configuration is configured to use themes from base16

```
﻿git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
```

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

