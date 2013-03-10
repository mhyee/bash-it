cite about-alias
about-alias 'general aliases'

# List directory contents
alias sl=ls
alias ls='ls -G'        # Compact view, show colors
alias la='ls -AF'       # Compact view, show hidden
alias ll='ls -alh'
alias l='ls -a'
alias l1='ls -1'

alias _="sudo"

if [ $(uname) = "Linux" ]
then
  alias ls="ls --color=always"
fi

alias c='clear'
alias k='clear'
alias cls='clear'

alias edit="$EDITOR"
alias pager="$PAGER"

alias q='exit'

alias rb='ruby'

alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up two directories
alias -- -='cd -'        # Go back (the alias is simply -)

# Shell History
alias h='history | tail -20'

# Tree
if [ ! -x "$(which tree 2>/dev/null)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# Directory
alias	md='mkdir -p'
alias	rd='rmdir'
