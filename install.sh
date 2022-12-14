# install homobrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

xcode-select --install

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
  openssh \
  tmuxinator

# install tmuxinator

# install iterm2
# brew install --cask iterm2

# install kitty terminal so much faster than iterm2
brew install --cask kitty

# install alfred
# brew install --cask alfred

# install raycast 
brew install --cask raycast

# install AltTab
brew install --cask alt-tab

# install dropzone
brew install --cask dropzone

# Amphetamine need to be installed manually
# in appstore

# Timer: install on app store: be focused

# install MonitorControl
brew install --cask monitorcontrol

# install numi
brew install --cask numi

# install appCleaner
brew install --cask appcleaner

# install rectangle
brew install --cask rectangle

# install bartender
brew install --cask bartender

# install meetingbar
brew install --cask meetingbar

# install stats
brew install --cask stats

# install cleanmymac
brew install --cask cleanmymac

# install on appstore for zClock Lite


# install lazygit
brew install jesseduffield/lazygit/lazygit

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Remove the .zshrc from oh-my-zsh
rm ~/.zshrc

# install the font below
# https://github.com/JJGO/macOS-setup/blob/master/mac-ansible/files/fonts/MesloLGS%20NF/MesloLGS%20NF%20Regular.ttf

# brew --prefix
/opt/homebrew/opt/fzf/install
set rtp+=/opt/homebrew/opt/fzf

# stow
stow zsh
stow nvim
stow tmux
stow git
stow p10k
stow tmuxinator
stow kitty
stow git

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

# install sorbet lsp
gem install sorbet
