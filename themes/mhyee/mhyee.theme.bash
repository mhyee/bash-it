# set current directory in titlebar
case $TERM in
        xterm*)
        TITLEBAR="\[\033]0;\W\007\]"
        ;;
        *)
        TITLEBAR=""
        ;;
esac

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM=auto
export GIT_PS1_SHOWCOLORHINTS=true

# [Jan 11 13:23:32]
date="${normal}[${yellow}\D{%b %e} \t${normal}]"

# user @ host
userhost="${bold_blue}\u${normal} @ ${bold_blue}\h"

# working dir
workingdir="${cyan}\W"

# full path of working dir
#workingdir="${bold_cyan}\w"

# →
promptchar="${white}→${normal} "

pre="${TITLEBAR}\n${date} ${userhost} ${normal}: ${workingdir}${normal}"
post="\n${promptchar}"

# using the built-in git aware prompt from Git
# obviously doesn't play nicely with other SCMs
PROMPT_COMMAND='__git_ps1 "$pre" "$post"'
