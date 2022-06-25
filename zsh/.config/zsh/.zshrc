export PIP_REQUIRE_VIRTUALENV=true
gpip() {
  PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

export EDITOR="vim"
setopt HIST_IGNORE_SPACE

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_DIR="/run/user/$UID"

export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc.py"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc 
alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"

source $(brew --prefix)/share/antigen/antigen.zsh

 antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

eval "$(starship init zsh)"
