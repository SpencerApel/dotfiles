#
# ~/.zshenv
#

# Adds ~/.local/bin to $PATH
export PATH="$PATH:$HOME/.local/bin/"

# Default programs
export EDITOR="nvim"
export TERMINAL="alacritty"
export TERM="alacritty"
export BROWSER="qutebrowser"
export READER="zathura"
export OPENER="xdg-open"
export WM="bspwm"
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"

# Clean up home dir
export ZDOTDIR="$HOME/.config/zsh"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export XAUTHORITY="$HOME/.cache/.Xauthority"
export LESSHISTFILE="-"
export XSERVERRC="$HOME/.config/X11/.xserverrc"
export npm_config_userconfig="$HOME/.config/.npm"
export GNUPGHOME="$HOME/.config/.gnupg"

# Let pacdiff work with nvim
export DIFFPROG="nvim -d"

# Clipboard environmental variables
export CM_SELECTIONS="primary clipboard"
export CM_MAX_CLIPS=10 # max num of copies in clipboard

# Colorize less for man pages
# start blinking
#export LESS_TERMCAP_mb=$'\e[01;31m' # 01=background,31=red
# start bold
export LESS_TERMCAP_md=$'\e[01;31m' # 01=background,31=red
# start underline
export LESS_TERMCAP_us=$'\e[01;32m' # 01=background,31=green
# start standout
#export LESS_TERMCAP_so=$'\e[01;33m' # 01=background,33=yellow
# end blinking, bold, underline, standout
export LESS_TERMCAP_me=$'\e[0m'

