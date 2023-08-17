###########################################################
# Aliases
###########################################################
 
# Facilities
alias :q='exit'
alias c='clear'
alias trash='rm -rf ~/.local/share/Trash/{files,info}/*'
alias rzsh='source ~/.zshrc'

# Package Administration
alias pacf='pacman -Slq | fzf --preview "pacman -Si {}" | xargs -ro sudo pacman -S'
alias yaf='yay -Slq | fzf --preview "yay -Si {}" | xargs -ro yay -S'

# Change Directory
alias work='cd ~/Workspace'
alias qtc='cd ~/.config/qtile'
alias trashfolder='cd ~/.local/share/Trash/files'
alias rcd='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# Pose
alias pls='clear && please'
alias neo='clear && neofetch'
alias npls='clear && neofetch && please'

# File View
alias token='cat ~/Documents/.token'

# Brightness
alias xb10='brightnessctl set 10%'
alias xb20='brightnessctl set 20%'
alias xb50='brightnessctl set 50%'
alias xb80='brightnessctl set 80%'
alias xb100='brightnessctl set 100%'
alias xbinc='brightnessctl set +10%'
alias xbdec='brightnessctl set 10%-'

# Some configurations
alias bton='sudo systemctl start bluetooth'
alias dipv6='sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1'
alias aipv6='sudo sysctl net.ipv6.conf.all.disable_ipv6=0 && sudo sysctl net.ipv6.conf.default.disable_ipv6=0'

