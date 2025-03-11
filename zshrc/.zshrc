if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

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

bindkey -s ^f "tmux-sessionizer\n"
