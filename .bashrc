#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd

#autostartx
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi

alias sudo='sudo ' #idk what this exactly does but its useful
alias w2x='waifu2x-ncnn-vulkan'
alias ls='exa'
alias yt='youtube-dl'
alias yt-mp3='youtube-dl --extract-audio --audio-format=mp3'
alias c='clear'
alias update-grub='grub-mkconfig -o /boot/grub/grub.cfg'
alias gc='git clone'
alias pubip='curl ifconfig.me'
alias tb='nc termbin.com 9999'
alias micro='micro -colorscheme simple'
alias grep='grep --color=auto'
alias gitconfig='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' #the thing for a git bare repo

#pacman
alias pcs='sudo pacman -S'
alias pcsyu='sudo pacman -Syu'
alias pcsi='pacman -Si'
alias pcss='pacman -Ss'
alias pcscc='sudo pacman -Scc'
alias pcrs='sudo pacman -Rs'
alias pcq='pacman -Q'
alias pcqo='pacman -Qo'
alias pcqi='pacman -Qi'
alias pcqs='pacman -Qs'
#yay
alias y='yay' #running yay by itself is like an -Syu but shorter
alias ys='yay -S'
alias ysyu='yay -Syu'
alias ysi='yay -Si'
alias yss='yay -Ss'
alias yscc='yay -Scc'
alias yrs='yay -Rs'
alias yq='yay -Q'
alias yqo='yay -Qo'
alias yqi='yay -Qi'
alias yqs='yay -Qs'

PS1="\w $ "

#easier to use my custom commands this way
export PATH="$PATH:$HOME/.local/bin"