echo -n "### loading .zshrc ... "

export LSCOLORS=gxfxcxdxbxegedabagacad
alias ls='ls -GF'

alias current="open ."
alias quit="exit"
alias reload="exec $SHELL -l"

. /usr/local/opt/asdf/libexec/asdf.sh

echo "Success!"

