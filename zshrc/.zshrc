alias vim='nvim .'

plugins=(vi-mode starship zoxide fzf zsh-autosuggestions zsh-syntax-highlighting)

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

PATH="$PATH":"$HOME/.local/bin/"
bindkey -s ^g "tmux-sessionizer\n"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

