#################################################################################
# Common Variables
#################################################################################

term = 'kitty'
editor = 'nvim'
browser = 'qutebrowser'
blocking_method = 'both'
notecmd = 'yank inline [[{url}][{title}]]; spawn ' + term +\
    ' -e ' + editor + ' -c "call CreateCapture(\"e\" , \"qutebrowser\")"'
