# install homobrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install packages
#brew install zsh # Don't need since new macOs all use zsh by default now
brew install \
  antibody \
  git \
  neovim \
  tmux \
  stow \
  yarn \
  fzf \
  ripgrep \
  bat \
  direnv \
  tree \
  node \
  openssh

/opt/homebrew/opt/fzf/install
set rtp+=/opt/homebrew/opt/fzf

# stow
stow zsh
stow nvim
stow tmux

# add zsh to valid login shells
#command -v zsh | sudo tee -a /etc/shells # Don't need this since zsh already in the list

# use zsh as default shell
#sudo chsh -s $(which zsh) $USER # Don't need this since it's the default for new macOS

antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh


