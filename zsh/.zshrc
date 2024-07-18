export LANGUAGE=en_IN.UTF-8
export LANG=en_IN.UTF-8
export LC_ALL=en_IN.UTF-8

bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

export LANG=en_US.UTF-8

export EDITOR="vim"
export TERM=screen-256color

alias ls="ls -a --color"

export XDG_DATA_HOME="${XDG_DATA_HOME:=${HOME}/.local/share}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=${HOME}/.config}"
export XDG_STATE_HOME="${XDG_STATE_HOME:=${HOME}/.local/state}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:=${HOME}/.cache}"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:=/run/user/${UID}}"

# Antidote
if [[ `uname` == "Darwin" ]]; then
	source /usr/local/opt/antidote/share/antidote/antidote.zsh
elif command -v apt > /dev/null; then 
	source ~/.local/share/.antidote/antidote.zsh
fi
export ANTIDOTE_HOME=${XDG_CACHE_HOME}/antidote
antidote load ${XDG_CONFIG_HOME}/antidote/plugins.conf

autoload -U compinit && compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

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

# Completion style 
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no 
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Starship 
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# Shell Integrations 
if [[ `uname` == "Darwin" ]]; then
	eval "$(fzf --zsh)"
fi
eval "$(zoxide init --cmd cd zsh)"

#---------------------Python-------------------------------

export PIP_REQUIRE_VIRTUALENV=true
gpip() {
  PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

#--------------------XDG Setup-----------------------------

# Docker 
export DOCKER_CONFIG="${XDG_CONFIG_HOME}"/docker

# NPM
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}"/npm/npmrc

# Elixir
export MIX_XDG=true

# Docker 
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

#Ruby 
export GEM_HOME="${XDG_DATA_HOME}"/gem
export GEM_SPEC_CACHE="${XDG_CACHE_HOME}"/gem

#GO
export GO_PATH=~/go
export PATH=$PATH:/$GO_PATH/bin:~/.local/bin

# nvm
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

