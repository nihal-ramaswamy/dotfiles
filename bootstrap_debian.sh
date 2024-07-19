# Vimplug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Tmux tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Apt-Get
xargs sudo apt-get -y install < apt_get/install.txt

sudo locale-gen en_IN

# Change shell
chsh -s $(which zsh)

# Antidote
git clone --depth=1 https://github.com/mattmc3/antidote.git ${XDG_DATA_HOME}/.antidote

# Dotfile manager
stow -vSt ~ git tmux vim zsh antidote
