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

# install iterm2
brew install --cask iterm2

# install lazygit
brew install jesseduffield/lazygit/lazygit

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Remove the .zshrc from oh-my-zsh
rm ~/.zshrc


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

# Install gem packages
gem install --user-install solargraph

# install tsserver
npm install -g typescript typescript-language-server

# install pyright
npm install -g pyright
