if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

###########################################################
# Oh My Zsh
###########################################################

# Load OMZ
export ZSH="$HOME/.oh-my-zsh"
export DOTS="$HOME/.dotfiles"


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
# export TERM='kitty'
export TERMINAL='kitty'
export PATH="$PATH:$HOME/.local/bin"


unsetopt autopushd
setopt append_history           # allow multiple sessions to append to one history
setopt bang_hist                # treat ! special during command expansion
setopt extended_history         # Write history in :start:elasped;command format
setopt globdots                 # Include dot files
setopt hist_expire_dups_first   # expire duplicates first when trimming history
setopt hist_find_no_dups        # When searching history, don't repeat
setopt hist_ignore_dups         # ignore duplicate entries of previous events
setopt hist_ignore_space        # prefix command with a space to skip it's recording
setopt hist_reduce_blanks       # Remove extra blanks from each command added to history


###########################################################
# Scripts
###########################################################
# source ~/Dotfiles/zsh/aliases.sh
source $DOTS/zsh/aliases.sh
source $DOTS/zsh/brightness.sh
source $DOTS/scripts/export-term.sh
source $DOTS/scripts/rose-pine.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
