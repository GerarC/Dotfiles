vide () {
    nohup neovide "$1" > /dev/null &
    disown
}

alias neov="vide ."
