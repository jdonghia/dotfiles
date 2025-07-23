export ZSH="$HOME/.oh-my-zsh"

export PATH="$PATH:$HOME/.local/scripts/:$HOME/go/bin"

alias vim='nvim'
alias or='vim $HOME/obsidian/inbox/*.md'

bindkey -s ^g "tmux-sessionizer\n"

plugins=(starship zsh-syntax-highlighting zoxide fzf zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

