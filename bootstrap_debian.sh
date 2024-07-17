# Vimplug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Tmux tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim

# Apt-Get
xargs sudo apt-get -y install < apt_get/install.txt

# Change shell
chsh -s $(which zsh)

# Starship
curl -sS https://starship.rs/install.sh | sh

# Antidote
git clone --depth=1 https://github.com/mattmc3/antidote.git ${XDG_DATA_HOME}/.antidote

# Dotfile manager
stow -vSt ~ git starship tmux vim zsh antidote nvim
