bindkey -e

export LANG=en_US.UTF-8

export EDITOR="vim"
export TERM=screen-256color

alias bls="ls -a --color -ltrh"

export XDG_DATA_HOME="${XDG_DATA_HOME:=${HOME}/.local/share}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=${HOME}/.config}"
export XDG_STATE_HOME="${XDG_STATE_HOME:=${HOME}/.local/state}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:=${HOME}/.cache}"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:=$PREFIX/tmp}"


# Lessfile History
export LESSHISTFILE="${XDG_CACHE_HOME}"/less/history
# ZSH
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export HISTSIZE=5000
export SAVEHIST="${HISTSIZE}"
export HISTDUP=erase
setopt HIST_IGNORE_SPACE
setopt sharehistory
setopt appendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

#---------------------Python-------------------------------

export PIP_REQUIRE_VIRTUALENV=true
gpip() {
  PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}
