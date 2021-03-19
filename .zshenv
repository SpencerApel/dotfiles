#
# ~/.zshenv
#

# Adds ~/.local/bin to $PATH
export PATH="$PATH:$HOME/.local/bin/"

# Default programs
export EDITOR="nvim"
export TERMINAL="alacritty"
export TERM="alacritty"
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

# Clipboard environmental variables
export CM_SELECTIONS="clipboard"
export CM_DEBUG=0 # set to 1 to print debug to stdout
export CM_OUTPUT_CLIP=1 # set to 1 to output clip to stdout
export CM_MAX_CLIPS=10 # max num of copies in clipboard
