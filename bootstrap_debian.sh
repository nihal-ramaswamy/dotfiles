# Vimplug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Tmux tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Apt-Get
xargs sudo apt install -y <apt_get/install.txt

rm ~/.bashrc

# Dotfile manager
stow -vSt ~ git tmux vim bash dircolors
