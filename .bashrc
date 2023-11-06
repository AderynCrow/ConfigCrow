# ~/.bashrc
#

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias up-mirrors='rate-mirrors arch | grep -v "#" | sudo tee /etc/pacman.d/mirrorlist'
#neofetch but rainbow flag
#alias neofetch='commands=("hyfetch -p bisexual" "hyfetch -p rainbow" "hyfetch -p nonbinary" "hyfetch -p pansexual" "hyfetch -p transgender" "hyfetch -p femboy") && chosen_command=$(shuf -n 1 -e "${commands[@]}") && eval "$chosen_command"'
neofetch() {
    local flags=("bisexual" "rainbow" "nonbinary" "pansexual" "transgender" "femboy")
    local chosen_flag=${flags[RANDOM % ${#flags[@]}]}
    eval "hyfetch -p $chosen_flag"
}

#alias neofetch='hyfetch'
#custom prompt
ps1='[\\u@\\h \\w]\\$ '
export PS1="\u:\[$(tput setaf 5)\]\[$(tput bold)\]\w \\$ \[$(tput sgr0)\]"
#better bash completion
if [ -f /etc/bash_completion ]; then
  source /etc/bash_completion
fi


PATH="$HOME/.local/bin:$PATH"
