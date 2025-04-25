# setting vim mode to bash
set -o vi
KEYTIMEOUT=1

PATH="$PATH":"$HOME/.local/scripts/"
bindkey -s ^f "tmux-sessionizer\n"

source <(fzf --zsh)
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

