# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#	Additional commands if using Mac with M1 Chip
if [[ $(uname -m) == 'arm64' ]]; then
  echo 'eval $(/opt/homebrew/bin/brew shellenv)' >>~/.zprofile
  eval $(/opt/homebrew/bin/brew shellenv)
fi

# Vimplug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Tmux tpm
git clone https://github.com/tmux-plugins/tpm ~/.local/share/.tmux/plugins/tpm


# Dotfile manager
brew install stow
stow -vSt ~ brew git vim zsh antidote tmux

brew bundle --file $HOME/.config/brew/.Brewfile

source ~/.zshrc

# Antidote
git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.local/share/.antidote

# sdkman
curl -s "https://get.sdkman.io" | bash
