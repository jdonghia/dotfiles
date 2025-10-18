# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"
# ZSH_THEME="powerlevel10k/powerlevel10k"

alias vim='nvim'
# alias or='vim $HOME/obsidian/inbox/*.md'

PATH="$PATH":"$HOME/.local/scripts/"
bindkey -s ^g "tmux-sessionizer\n"

plugins=(zsh-syntax-highlighting zoxide fzf zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
