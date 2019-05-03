#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups

source ~/.bin/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="verbose name git"

PS1='\n┌─╼[\u@\h]╾─╼[\j][$?]╾─╼[\t]$(__git_ps1 "╾─╼[%s]╾─╼[$(git rev-parse --short HEAD 2> /dev/null)]")\n└──╼[\w]\n▶'

if [ -d "$HOME/.bin" ] ;
	then PATH="$HOME/.bin:$PATH"
fi

#auto-complete
eval "$(beet completion)"

#list
alias ls='ls --color=auto'      

#dotfile management
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#readable output
alias df='df -h'

#merge new settings
alias merge="xrdb -merge ~/.Xresources"

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#shopt
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases


fortune
echo " "

EDITOR=nvim
