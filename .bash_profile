#
# bash alias
#

# Customized PS1
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ git:(\1)/'
}
PS1="\[\033[01;32m\][\u@\h\[\033[00m\] \[\033[01;34m\]\W\[\033[01;32m\]]\[\033[00m\] \$ "
PS1="\[\033[01;32m\][\u@\h\[\033[00m\] \[\033[01;34m\]\W\[\033[01;32m\]\$(parse_git_branch)]\[\033[00m\] \$ "

# General
export LC_COLLATE="C"
alias ll="ls -al --group-directories-first"

alias pwd="pwd -P"
alias cd..="cd .."
alias cdd="cd ../../"
alias cddd="cd ../../../"
alias tree="tree -C"
alias gcc="gcc -fdiagnostics-color=always"

# Git
alias gits="git status"
alias gitc="git commit -e"
alias gita="git add"

# VIM or NEOVIM
alias vi="vim"
alias vu="vi"
alias vo="vi"
alias ci="vi"
alias co="vi"

# Do not use xterm-256color, it's just ugly.
export TERM="screen-256color"

vman() { vim -MR +"set filetype=man" <(man $1); }
