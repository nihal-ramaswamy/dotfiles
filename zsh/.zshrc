export PIP_REQUIRE_VIRTUALENV=true
gpip() {
  PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

export EDITOR="vim"
export TERM=screen-256color
setopt HIST_IGNORE_SPACE
setopt sharehistory

alias ls="ls -a --color"

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config 
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache 
export XDG_RUNTIME_DIR=/run/user/$UID

# Antidote
source /usr/local/opt/antidote/share/antidote/antidote.zsh
export ANTIDOTE_HOME=${XDG_CACHE_HOME}/antidote
antidote load ${XDG_CONFIG_HOME}/antidote/plugins.conf

# Starship 
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Docker 
export DOCKER_CONFIG="${XDG_CONFIG_HOME}"/docker

# Lessfile History 
export LESSHISTFILE="${XDG_CACHE_HOME}"/less/history

# ZSH 
export HISTFILE="${XDG_STATE_HOME}"/zsh/history     

# NPM
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}"/npm/npmrc

# Elixir
export MIX_XDG=true

# Docker 
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

#Ruby 
export GEM_HOME="${XDG_DATA_HOME}"/gem
export GEM_SPEC_CACHE="${XDG_CACHE_HOME}"/gem

# ZSH 
export HISTFILE="$XDG_STATE_HOME"/zsh/history 

export GO_PATH=~/go
export PATH=$PATH:/$GO_PATH/bin:~/.local/bin

export LANG=en_US.UTF-8

# nvm
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias g++='g++-14'
alias gcc='gcc-14'

alias clang++='g++-14'
alias clangcc='gcc-14'
