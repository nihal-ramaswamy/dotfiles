cd
# Command line tools
xcode-select install

# Installing homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Dotfile manager
brew install stow
stow -vSt ~ brew git vim zsh nvim tmux

# Installing apps
brew bundle --file ~/.Brewfile

