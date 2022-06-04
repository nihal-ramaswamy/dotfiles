# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Vimplug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Tmux tpm
git clone https://github.com/tmux-plugins/tpm $HOME/.config/tmux/.tmux/plugins/tpm

# Dotfile manager
brew install stow
stow -vSt ~ kitty brew git vim zsh tmux

brew bundle --file $HOME/.config/brew/.Brewfile

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git $XDG_CONFIG_HOME/zsh/.fzf
./$XDG_CONFIG_HOME/zsh/.fzf/install
mv $HOME/.fzf.zsh $XDG_CONFIG_HOME/zsh

