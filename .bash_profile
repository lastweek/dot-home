#
#	Prompt String
#

PS1="[\u@\h: \W]\\$ "

#set -o vi

#
#	General Alias
#

alias ll="ls -alhGF"
alias kk="ls -alG"
alias ls="ls -G"
alias pwd="pwd -P"
alias cd..="cd .."
alias cdd="cd ../../"
alias cddd="cd ../../../"
alias gcc="gcc -fdiagnostics-color=always"

#
#	Git Abbr
#

alias gits="git status"
alias gitc="git commit -am \"up\""
alias gita="git add"
alias gitp="git push"

#
#	Sorry, my fault.
#

alias vu="vi"
alias vo="vi"
alias ci="vi"
alias co="vi"

#
#	Dedicated for my MBP
#

alias ctags="/usr/local/bin/ctags"
alias cdg="cd ~/Github"
alias cdl="cd ~/Github/Linux"
alias cds="cd ~/Github/Sandix"
alias cdo="cd ~/OpenSource"
alias gdb="ggdb"
alias qi386="qemu-system-i386 -monitor stdio"
alias xvi="open -a MacVim"
alias sub="open -a Sublime\ Text\ 2"
alias tree="tree -C"

#
#	Cross Toolchains
#

export PATH="$PATH:/Users/lastweek/X-Tools/bin"
