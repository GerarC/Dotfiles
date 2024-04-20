function notify_brightness () {
    if [ $# -eq 1 ]; then
        brightnessctl set $1%
    fi
    notify-send "Bright" "$(brightnessctl | grep % | sed 's/^\t\w* \w*: \w* (\(\w*%\))/Brightness at \1/g')" -u low
}

# Brightness
alias xb10='notify_brightness "10"'
alias xb20='notify_brightness "20"'
alias xb50='notify_brightness "50"'
alias xb80='notify_brightness "80"'
alias xb100='notify_brightness "100"'
alias xbinc='notify_brightness "+10"'
alias xbdec='notify_brightness "10%-#"'

