eval "$(zoxide init zsh)"

source <(fzf --zsh)

alias ls="ls --color=auto"

# Sessionizer
PATH="$PATH":"$HOME/.local/scripts/"

set -o vi
KEYTIMEOUT=1

bindkey -s ^f "tmux-sessionizer\n"

eval "$(starship init zsh)"

