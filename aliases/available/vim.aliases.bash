cite 'about-alias'
about-alias 'vim abbreviations'

# mt VIMSERVER file1 file2 ... fileN
# Opens file1...fileN in tabs in the specified (GUI) VIMSERVER
function mt() { mvim --servername "$1" --remote-tab-silent "${@:2}"; }

alias m='mvim -p'
alias vi='/usr/local/bin/vim -p'
alias vim='/usr/local/bin/vim -p'
