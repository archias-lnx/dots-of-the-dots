export PATH=$PATH:$HOME/.scripts

# vim as manpager
export MANPAGER="/bin/sh -c \"col -b | vim --not-a-term -c 'set ft=man ts=8 nomod nolist noma' -\""

# For GTK and QT uniform look
export DESKTOP_SESSION=gnome
export QT_QPA_PLATFORMTHEME=gtk2

# For keyring
export SSH_AUTH_SOCK

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export EDITOR="nvim"
export VISUAL="code"
export TERMINAL="kitty"
export BROWSER="firefox"
export ALT_BROWSER="chromium"
export EMAIL="thunderbird"
export PDFVIEW="okular"
export PASSWD="keepassxc"
export PLAYER="spotify"
export GUIFM="thunar"
export LAUNCHER="rofi -show drun"
