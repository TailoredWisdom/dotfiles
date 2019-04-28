#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups

PS1='┌─[\u]─[\h]─[\W]\n└─╼\$ '

if [ -d "$HOME/.bin" ] ;
	then PATH="$HOME/.bin:$PATH"
fi

#auto-complete
eval "$(beet completion)"

#list
alias ls='ls --color=auto'      

#dotfile management
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

#fix obvious typo's
alias cd..='cd ..'
alias pdw="pwd"

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#readable output
alias df='df -h'

#merge new settings
alias merge="xrdb -merge ~/.Xresources"

# Aliases for software managment
# pacman or pm
alias pmsyu="sudo pacman -Syu --color=auto"
alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syyu'

#ps
alias ps="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

# yaourt keeps tmp folder cleaner than packer
alias pks="yaourt -S --noconfirm "
alias pksyu="yaourt -Syu --noconfirm"
alias pksyua="yaourt -Syu  --aur --noconfirm"

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#improve png
alias fixpng="find . -type f -name "*.png" -exec convert {} -strip {} \;"

#get fastest mirrors in your neighborhood 
alias mirror="sudo reflector --protocol https --latest 50 --number 20 --sort rate --save /etc/pacman.d/mirrorlist"
alias mirrors=mirror

#mounting the folder Public for exchange between host and guest on virtualbox
alias vbm="sudo mount -t vboxsf -o rw,uid=1000,gid=1000 Public /home/$USER/Public"

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
