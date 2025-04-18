eval "$(zoxide init zsh)"

source <(fzf --zsh)

# export PATH="$HOME/.tmuxifier/bin:$PATH"
# export EDITOR=nvim

alias ls="ls --color=auto"
alias clear-nvim="rm -rf ~/.config/nvim; rm -rf ~/.local/share/nvim; rm -rf ~/.local/state/nvim; rm -rf ~/.cache/nvim"
alias vim="nvim ."
# alias session="tmuxifier load-session"
alias lazy="lazygit"

# Sessionizer
PATH="$PATH":"$HOME/.local/scripts/"

set -o vi
KEYTIMEOUT=1

bindkey -s ^f "tmux-sessionizer\n"

eval "$(starship init zsh)"

