# Zsh
sudo apt-get install zsh
chsh -s $(which zsh)

# Vim
sudo apt install vim 
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install python-neovim
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
sudo apt install tmux

# i3wm
sudo apt install i3

# git
sudo apt install git

# Antidote 
git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.local/share/.antidote
