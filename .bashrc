#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
set -o vi
export VISUAL=nvim
export EDITOR="$VISUAL"
set editing-mode vi
set show-mode-in-prompt on
set vi-ins-mode-string +
set vi-cmd-mode-string :
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x dwm >/dev/null && exec startx 

alias v="nvim"
alias brc="v ~/.bashrc"
alias p="sudo pacman"
alias ll="ls -al"
alias SS="sudo systemctl"
alias bkp="sudo timeshift-gtk"
alias ytc="youtube-dl --rm-cache-dir"
alias yt="youtube-dl --add-metadata -i -o '%(upload_date)s-%(title)s.%(ext)s'"
alias yta="yt -x -f bestaudio/best"
alias ytf="youtube-dl -F"
alias py="python"
alias tp="ping 8.8.8.8"
alias rw="SS restart NetworkManager"
alias upd="sudo fstrim -a -v && p -Qqe > ~/.local/bin/pkg && cfg commit -am 'Arch System update' && cfg push ; bkp && yay -Syu && status"
alias r="ranger"
alias gv="cd ~/Downloads/video/"
alias tsmm="watch -n 10 transmission-remote -l"
alias tsm="transmission-remote"
alias tsmd="transmission-daemon --download-dir $HOME/Downloads/video"
alias tsmr="transmission-remote -l | grep 100\% | grep Done | awk '{print $1}' | xargs -n 1 -I \% /usr/bin/transmission-remote -t \% -r"
alias vrc="v ~/.config/nvim/init.vim"
alias mo="xset dpms force off"
alias fboot="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias play="mpv --ytdl-format=137+251"
alias cfg='/usr/bin/git --git-dir=/home/chinu/.cfg/ --work-tree=/home/chinu'
alias cssh="ssh 'chinu@192.168.1.105'"
alias kf="xmodmap ~/.local/bin/keys_disable"
