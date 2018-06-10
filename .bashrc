# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# PS1 '$' or '(branch) $'
PS1="\$(__git_ps1)\$ "

# Zero out saved history length.
HISTSIZE=1000
HISTFILESIZE=0

# Set vi mode.
set -o vi

# Operations specific to this system.
if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
