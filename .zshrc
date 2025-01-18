echo -n "### Loading .zshrc ..."

# alias
export LSCOLORS=cxfxcxdxbxegedabagacad
alias ls='eza --icons'
alias la='ls -lah'
alias cat='bat -pp --theme=ansi'
alias less='bat -p --paging=always --theme=ansi'
alias reload='exec $SHELL -l'
alias clip='~/sandbox/dev/shell/clip-path.sh .'
alias quit='exit'
alias current='open .'

# history
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# config
setopt hist_ignore_dups

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

echo "SUCCESS !!"

# starship
eval "$(starship init zsh)"
