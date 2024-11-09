###########################################################
# Aliases
###########################################################
 
# Facilities
alias :q='exit'
alias c='clear'
alias trash='rm -rf ~/.local/share/Trash/{files,info}/*'
alias rzsh='source ~/.zshrc'

# Package Administration
alias pacl='pacman -Qeq | fzf --preview "pacman -Si {}" | xargs -ro sudo pacman -Rsun'
alias pacf='pacman -Slq | fzf --preview "pacman -Si {}" | xargs -ro sudo pacman -S'
alias yaf='yay -Slq | fzf --preview "yay -Si {}" | xargs -ro yay -S'

# Change Directory
alias work='cd ~/Workspace'
alias qtc='cd ~/.config/qtile'
alias trashfolder='cd ~/.local/share/Trash/files'
alias rcd='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias fwork='cd $(ls ~/Workspace | fzf --preview "cat ~/Workspace/{}/README.md" |  sed "s#\(.*\)#$(ls -d ~)/Workspace/\1#")'

# Pose
alias pls='clear && please'
alias neo='clear && fastfetch'
alias npls='clear && fastfetch && please'

# File View
alias token='cat ~/Documents/.token'

# Some configurations
alias bton='sudo systemctl start bluetooth'
alias dipv6='sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1'
alias aipv6='sudo sysctl net.ipv6.conf.all.disable_ipv6=0 && sudo sysctl net.ipv6.conf.default.disable_ipv6=0'
