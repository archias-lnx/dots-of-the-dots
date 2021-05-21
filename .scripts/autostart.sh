#!/bin/sh

function run {
  if ! pgrep $1 ;
  then 
    $@&
  fi
}


################################
# Programms
################################
run keyboardInit
# transparency
run picom -b --dbus --experimental-backends --config ~/.config/awesome/configuration/picom.conf
# run picom  --config ~/.config/picom/picom.conf --experimental-backends
# for notifications 
#deadd-notification-center 
# dunst &
# automounting usb drives
run udiskie 
# mouse disappears
run unclutter 
# cloud sync
# for quicker emacs
# run emacs --bg-daemon 
# for nightmode
run redshift 
run nextcloud

################################
# Applets
################################
run volumeicon
run flameshot
# run nm-applet
run blueman-applet
run nitrogen --restore 
