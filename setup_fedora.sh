# nvim
sudo dnf copr enable agriffis/neovim-nightly
sudo dnf install -y neovim python3-neovim

# ghostty
sudo dnf copr enable scottames/ghostty
sudo dnf install ghostty

# Zsh 
sudo dnf install zsh

# Vim 
sudo dnf install vim
## Vimplug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# Tmux 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Antidote 
git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.local/share/.antidote

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.config/fzf
~/.config/fzf/install

# Zed 
curl -f https://zed.dev/install.sh | sh

# Zoxide
sudo dnf install zoxide

# xclip
sudo dnf install xclip

chsh -s $(which zsh)

echo "Check out https://nattdf.streamlit.app for further setup!"
