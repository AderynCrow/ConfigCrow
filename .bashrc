# ~/.bashrc
#

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
ps1='[\\u@\\h \\w]\\$ '
#neofetch but rainbow flag
alias neofetch='hyfetch'
#custom prompt
export PS1="\u:\[$(tput setaf 5)\]\[$(tput bold)\]\w \\$ \[$(tput sgr0)\]"
#better bash completion
if [ -f /etc/bash_completion ]; then
  source /etc/bash_completion
fi


PATH="$HOME/.local/bin:$PATH"
