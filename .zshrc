setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

alias ls='ls --color'
alias ll='ls -ls'
alias la='ls -lsa'

# export HOST="localhost"

alias vim=nvim

# Ruby
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH

# Rust
export PATH=$HOME/.cargo/bin:$PATH

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Auto completion
autoload -Uz compinit && compinit

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{yellow}%b%F{reset} '

function virtualenv_info {
  [ $VIRTUAL_ENV ] && echo ‘(‘`basename $VIRTUAL_ENV`’) ‘
}

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n@%F{green}%m%F{reset} %1~ ${vcs_info_msg_0_}%# '

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        source "$BASE16_SHELL/profile_helper.sh"

base16_edge-dark

PATH="$HOME/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
