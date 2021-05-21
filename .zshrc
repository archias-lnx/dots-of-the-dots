# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# only as backup if p10k not installed
ZSH_THEME="robbyrussell"

GITSTATUS_LOG_LEVEL=DEBUG 

# if you install plugins via git, put them in here
plugins=(
  git
)


source $ZSH/oh-my-zsh.sh

# History in cache directory:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.cache/zsh/history

# Autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#888888,bg=underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# # vi mode
# bindkey -v
# export KEYTIMEOUT=1
# # Use vim keys in tab complete menu:
# bindkey -M menuselect 'h' vi-backward-char
# bindkey -M menuselect 'l' vi-forward-char
# bindkey -M menuselect 'k' vi-up-line-or-history
# bindkey -M menuselect 'j' vi-down-line-or-history
# bindkey -M vicmd 'k' history-substring-search-up
# bindkey -M vicmd 'j' history-substring-search-down
# bindkey -v '^?' backward-delete-char
# cursorInsert='\e[1 q'
# cursorNormal='\e[4 q'

# # Change cursor shape for different vi modes.
# function zle-keymap-select {
#   if [[ ${KEYMAP} == vicmd ]] ||
#      [[ $1 = 'beam' ]]; then
#     echo -ne $cursorNormal
#   elif [[ ${KEYMAP} == main ]] ||
#        [[ ${KEYMAP} == viins ]] ||
#        [[ ${KEYMAP} = '' ]] ||
#        [[ $1 = 'block' ]]; then
#     echo -ne $cursorInsert
#   fi
# }
# zle -N zle-keymap-select
# zle-line-init() {
#     zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
#     echo -ne $cursorInsert
# }
# zle -N zle-line-init
# echo -ne $cursorInsert # Use beam shape cursor on startup.
# preexec() { echo -ne $cursorInsert ;} # Use beam shape cursor for each new prompt.

# # Edit line in vim with ctrl-e:
# autoload edit-command-line; zle -N edit-command-line
# bindkey '^e' edit-command-line

bindkey -s '^o' 'ranger\n'

# History substring search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#general shortcuts
alias sdn="shutdown now"
alias shutdown="shutdown"
alias reboot="reboot"
alias ka="killall"
alias e="exit"
alias c="clear"
alias dir="mkdir"

alias ..="cd .."
alias ...="cd ../.."

# Changing "ls" to "exa"
alias ls='exa -l --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -al --color=always --group-directories-first'  # long format


alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# git alias
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gl="git pull"

# For (un)mounting USB-devices
alias mnt="udiskie-mount -a"
alias umnt="udiskie-umount -a"
alias vim="nvim"

#program shortcuts
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

alias zathura='devour zathura'
alias vlc='devour vlc'
alias okular='devour okular'
alias sxiv='devour sxiv'
alias nitrogen='devour nitrogen'

# alias systemctl
alias suspend='systemctl suspend'
alias hibernate='systemctl hibernate'
alias poweroff='sudo poweroff'
alias reboot='sudo reboot'



# Plugins are installed via YAY -> so I source them here 
# if you install them via git -> put them in your plugins list at the top
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

ZSH_PLUGPATH=/usr/share/zsh/plugins
source $ZSH_PLUGPATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source $ZSH_PLUGPATH/zsh-history-substring-search/zsh-history-substring-search.zsh

source ~/.zprofile

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
