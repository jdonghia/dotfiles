
export ZSH="$HOME/.oh-my-zsh"

alias vim='nvim'

PATH="$PATH":"$HOME/.local/scripts/"
bindkey -s ^g "tmux-sessionizer\n"

plugins=(starship zsh-syntax-highlighting zoxide fzf zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

