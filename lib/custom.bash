function psx() { ps aux | grep -v grep | grep "$@" -i --color=auto; }
function fname() { find . -iname "*$@*"; }
function wiki() { dig +short txt "$*".wp.dg.cx; }
