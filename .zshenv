#
# ~/.zshenv
#

# Adds ~/.local/bin to $PATH
export PATH="$PATH:$HOME/.local/bin/"

# Default programs
export EDITOR="vim"
export TERMINAL="URxvt"
export BROWSER="brave"
export READER="zathura"
export OPENER="xdg-open"
export WM="bspwm"
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"

# Clean up home dir
export ZDOTDIR="$HOME/.config/zsh"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export VIMINIT='let $MYVIMRC="$HOME/.config/vim/.vimrc" | source $MYVIMRC'

