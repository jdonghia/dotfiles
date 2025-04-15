# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# eval "$(starship init zsh)"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
