
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

alias vim='nvim'
# alias or='vim $HOME/obsidian/inbox/*.md'

PATH="$PATH":"$HOME/.local/scripts/"
bindkey -s ^g "tmux-sessionizer\n"

plugins=(git zoxide fzf zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh



