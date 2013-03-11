cite about-plugin
about-plugin 'use homebrew installed autojump'

if [ -f `brew --prefix`/etc/autojump.sh ]; then
  . `brew --prefix`/etc/autojump.sh
fi
