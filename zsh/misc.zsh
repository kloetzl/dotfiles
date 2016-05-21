## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## file rename magick
bindkey "^[m" copy-prev-shell-word

## jobs
setopt long_list_jobs

## pager
export PAGER=less
export LC_CTYPE=$LANG

## make the whole pipe fail if a single commands exits != 0
set -opipefail
