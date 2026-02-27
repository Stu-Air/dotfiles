# ~/.bashrc

[[ $- != *i* ]] && return

## Colorize the ls output ##
alias ls='ls --color=auto'

## Use a long listing format ##
alias ll='ls -la'

## Show hidden files ##
#alias l.='ls -d .* --color=auto'
alias grep="grep --color=auto"

eval "$(starship init bash)"