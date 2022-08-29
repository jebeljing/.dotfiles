# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Export nvm completion settings for lukechilds/zsh-nvm plugin
# Note: THis must be exported before the plugin is bundled
export NVM_DIR=${HOME}/.nvm
export NVM_COMPLETION=true

export VIMCONFIG=~/.config/nvim
export VIMDATA=~/.local/share/nvim

source ~/.zsh_plugins.sh

# aliases
alias ls="ls -la --color"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias cat="bat"
alias vimrc="cd ${VIMCONFIG}"
alias lg="lazygit"
alias uw="cd ~/code/upstart_web"
alias mycode="cd ~/code"
alias cls="clear"

export BAT_THEME="gruvbox-dark"
export CLICOLOR=1

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ -e ~/.umt/umt-profile ]] && emulate sh -c 'source $HOME/.umt/umt-profile'

export PYTHONPATH=$(pwd):$PYTHONPATH
export VISUAL=nvim

export PATH="$PATH:/Users/jingshan.yin/.local/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

AUTO_NOTIFY_IGNORE+=("lg", "lazygit", "tmux")

# login() {
#   aws-sso-util logout
#   aws-sso-util login --profile playground
#   aws-sso-util login --profile staging
#   aws-sso-util login --profile production
#
#   exportCreds
# }
#
# exportCreds() {
#   aws-export-credentials --profile staging --credentials-file-profile staging
#   aws-export-credentials --profile production --credentials-file-profile production
#   aws-export-credentials --profile playground --credentials-file-profile playground
# }

export PATH=$PATH:/Users/jingshan.yin/.gem/ruby/2.7.0/bin

# for aws-sso-util
# _AWS_SSO_UTIL_COMPLETE_SCRIPT_DIR=~/.local/share/aws-sso-util
# _AWS_SSO_UTIL_COMPLETE_SCRIPT=$_AWS_SSO_UTIL_COMPLETE_SCRIPT_DIR/complete.sh
# if which aws-sso-util > /dev/null; then
#   mkdir -p $_AWS_SSO_UTIL_COMPLETE_SCRIPT_DIR
#   ({ _AWS_SSO_UTIL_COMPLETE=zsh_source aws-sso-util > $_AWS_SSO_UTIL_COMPLETE_SCRIPT.tmp ;
#     mv $_AWS_SSO_UTIL_COMPLETE_SCRIPT.tmp $_AWS_SSO_UTIL_COMPLETE_SCRIPT; } &)
#   if [ -f $_AWS_SSO_UTIL_COMPLETE_SCRIPT ]; then
#     source $_AWS_SSO_UTIL_COMPLETE_SCRIPT
#   fi
# fi

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/p10k/.p10k.zsh.
[[ ! -f ~/.dotfiles/p10k/.p10k.zsh ]] || source ~/.dotfiles/p10k/.p10k.zsh
