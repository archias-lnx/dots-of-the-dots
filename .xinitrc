#/bin/bash

#set keyboard and mousepad options
xset r rate 250 50
xset b off

# # For keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
