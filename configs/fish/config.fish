set fish_greeting

#Aliases
alias diary='diary --dir=.diary/ --editor=nvim'
alias aconf="vim ~/.config/alacritty/alacritty.yml"
alias pipes='pipes.sh'
alias code='code-insiders'
alias vim='nvim'
alias keys='vim ~/.config/hypr/conf/keybindings/default.conf'
alias footconf='vim ~/.config/foot/foot.ini'
alias fishconf='vim ~/.config/fish/config.fish'
alias ls='lsd'
alias c='clear'
alias nf='neofetch'
alias pf='pfetch'
alias shutdown='systemctl poweroff'
alias v='nvim'
alias ts='~/dotfiles/scripts/snapshot.sh'
alias matrix='cmatrix'
alias wifi='nmtui'
alias od='~/private/onedrive.sh'
alias rw='~/dotfiles/waybar/reload.sh'
alias winclass="xprop | grep 'CLASS'"
alias dot="cd ~/dotfiles"
alias fucking 'sudo'
#Window Managers
alias Qtile='startx'
alias QtileWayland='qtile start -b wayland'
#GIT
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"
# SCRIPTS
alias gr='python ~/dotfiles/scripts/growthrate.py'
alias ChatGPT='python ~/mychatgpt/mychatgpt.py'
alias chat='python ~/mychatgpt/mychatgpt.py'
alias ascii='~/dotfiles/scripts/figlet.sh'
# VIRTUAL MACHINE
alias vm='~/private/launchvm.sh'
alias lg='~/dotfiles/scripts/looking-glass.sh'
alias vmstart='virsh --connect qemu:///system start win11'
alias vmstop='virsh --connect qemu:///system destroy win11'
# EDIT CONFIG FILES
alias confq='nvim ~/dotfiles/qtile/config.py'
alias confp='nvim ~/dotfiles/picom/picom.conf'
alias confb='nvim ~/dotfiles/.bashrc'
# EDIT NOTES
alias notes='vim ~/.notes'
# SYSTEM
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias setkb='setxkbmap de;echo "Keyboard set back to de."'
# Qtile
alias res1='xrandr --output DisplayPort-0 --mode 2560x1440 --rate 120'
alias res2='xrandr --output DisplayPort-0 --mode 1920x1080 --rate 120'

set -x PATH ~/.local/share/JetBrains/Toolbox/apps/intellij-idea-ultimate/bin/ $PATH

#Starship
starship init fish | source

if status is-interactive
  # Commands to run in interactive sessions can go here
  set -x GPG_TTY (tty)
  set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
  gpgconf --launch gpg-agent
end

