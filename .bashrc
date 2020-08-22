#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ..='cd ..'
alias ls='exa'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
GREEN=$(tput setaf 2)
BLUE=$(tput setaf 4)
RESET=$(tput sgr0)
PS1='${GREEN}\u # ${BLUE}\w${RESET} '
