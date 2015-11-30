export GOPATH=$HOME
export EDITOR=vim

export PATH=~/bin:"$PATH"

alias f='cd $(find $HOME | peco)'
alias p='cd $(ghq list -p | peco)'
alias v='vi $(find $HOME | peco)'
