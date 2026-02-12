# Zsh
sudo apt-get install zsh
chsh -s $(which zsh)

# Vim
sudo apt install vim 
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install python3-neovim
sudo apt install neovim
## Vimplug
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Mullvad
sudo curl -fsSLo /usr/share/keyrings/mullvad-keyring.asc https://repository.mullvad.net/deb/mullvad-keyring.asc
echo "deb [signed-by=/usr/share/keyrings/mullvad-keyring.asc arch=$( dpkg --print-architecture )] https://repository.mullvad.net/deb/stable stable main" | sudo tee /etc/apt/sources.list.d/mullvad.list
sudo apt update
sudo apt install mullvad-browser

# Tmux
git clone https://github.com/tmux-plugins/tpm ~/.local/share/.tmux/plugins/tpm/tpm
sudo apt install tmux

# git
sudo apt install git

# Antidote 
git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.local/share/.antidote


# fzf 
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Kitty 
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
mkdir ~/.local/bin
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=$(readlink -f ~)/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=$(readlink -f ~)/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
echo 'kitty.desktop' > ~/.config/xdg-terminals.list

# Zed 
curl -f https://zed.dev/install.sh | sh

# Zoxide 
sudo apt install zoxide

# xclip
sudo apt install xclip
