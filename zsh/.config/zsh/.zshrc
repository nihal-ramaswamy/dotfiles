# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
 antigen bundle zsh-users/zsh-autosuggestions
 antigen theme romkatv/powerlevel10k

antigen apply

[ -f $XDG_CONFIG_HOME/zsh/.fzf.zsh ] && source $XDG_CONFIG_HOME/zsh/.fzf.zsh
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
export FZF_DEFAULT_COMMAND="fd --type f --hidden"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
