#
# ~/.zshenv
#

# Adds ~/.local/bin to $PATH
export PATH="$PATH:$HOME/.local/bin/"

# Default programs
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="brave"
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
