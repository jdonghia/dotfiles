alias vim='nvim .'

plugins=(starship zoxide fzf zsh-autosuggestions zsh-syntax-highlighting)

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

PATH="$PATH":"$HOME/.local/bin/"
bindkey -s ^g "tmux-sessionizer\n"



