# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

export BAT_THEME="gruvbox-dark"
export CLICOLOR=1

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ -e ~/.umt/umt-profile ]] && emulate sh -c 'source $HOME/.umt/umt-profile'

export PYTHONPATH=$(pwd):$PYTHONPATH
export VISUAL=nvim

export PATH="$PATH:/Users/jingshan.yin/.local/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

login() {
  aws-sso-util logout
  aws-sso-util login
  exportCreds
}

exportCreds() {
  aws-export-credentials --profile sandbox --credentials-file-profile sandbox;
}

export PATH=$PATH:/Users/jingshan.yin/.gem/ruby/2.7.0/bin
