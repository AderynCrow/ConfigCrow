# ~/.bashrc
#

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias up-mirrors='rate-mirrors arch | grep -v "#" | sudo tee /etc/pacman.d/mirrorlist'
alias tmux='~/Git/ConfigCrow/tmux'
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
if [ "$TERM" = "linux" ]; then
    echo -en "\e]P01e1e2e" #black
    echo -en "\e]P845475a" #darkgrey
    echo -en "\e]P1f38ba8" #darkred
    echo -en "\e]P9eba0ac" #red
    echo -en "\e]P2a6e3a1" #darkgreen
    echo -en "\e]PA94e2d5" #green
    echo -en "\e]P3f2cdcd" #brown
    echo -en "\e]PBf9e2af" #yellow
    echo -en "\e]P489b4fa" #darkblue
    echo -en "\e]PC89dceb" #blue
    echo -en "\e]P5cba6f7" #darkmagenta
    echo -en "\e]PDf5c2e7" #magenta
    echo -en "\e]P6b4befe" #darkcyan
    echo -en "\e]PE89dceb" #cyan
    echo -en "\e]P7a6adc8" #lightgrey
    echo -en "\e]PFcdd6f4" #white
    clear #for background artifacting
	#~/Git/ConfigCrow/tmux
	nvim
fi

