if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

###########################################################
# Oh My Zsh
###########################################################

# Load OMZ
export ZSH="$HOME/.oh-my-zsh"

# Themes selection
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
	archlinux
    vi-mode
	git
	github
	python
	pip
	virtualenv
	man
	sudo
	themes
	asdf
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


###########################################################
# Custom Settings
###########################################################
export EDITOR='nvim'
export TERM='kitty'
export TERMINAL='kitty'
export PATH="$PATH:$HOME/.local/bin"


unsetopt autopushd
setopt append_history           # allow multiple sessions to append to one history
setopt bang_hist                # treat ! special during command expansion
setopt extended_history         # Write history in :start:elasped;command format
setopt hist_expire_dups_first   # expire duplicates first when trimming history
setopt hist_find_no_dups        # When searching history, don't repeat
setopt hist_ignore_dups         # ignore duplicate entries of previous events
setopt hist_ignore_space        # prefix command with a space to skip it's recording
setopt hist_reduce_blanks       # Remove extra blanks from each command added to history

###########################################################
# Aliases
###########################################################
 
# Facilities
alias :q='exit'
alias c='clear'
alias trash='rm -rf ~/.local/share/Trash/files/* ~/.local/share/Trash/info/*'
alias rzsh='source ~/.zshrc'


# Change Directory
alias work='cd ~/Workspace'
alias qtc='cd ~/.config/qtile'
alias trashfolder='cd ~/.local/share/Trash/files'
alias rcd='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# Pose
alias pls='clear && please'
alias neo='clear && neofetch'
alias npls='clear && neofetch && please'
alias yay='yay --color always'
alias pacman='sudo pacman --color always'

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
