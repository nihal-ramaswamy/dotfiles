# Dotfiles
Managed by stow

## Mac

Install command line tools:
```bash
xcode-select install
```

Install homebrew:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install `stow`
```
brew install stow
```

Run stow:
```bash
stow -vSt ~ brew git vim zsh nvim tmux
```

Install packages from `brew`
```bash
brew bundle --file ~/.Brewfile
```

Install `powerline fonts`
```bash
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```
