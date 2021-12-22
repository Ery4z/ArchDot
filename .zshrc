# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/thomas/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Theme zsh and neofetch
autoload -U promptinit && promptinit
prompt -s adam2
clear

cat ~/.cache/neofetch

# Adding venv activated
plugins=(git virtualenv)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)

# For venv python

alias act="unset PROMPT_COMMAND && source ./venv/bin/activate" 
alias dact="deactivate && export PROMPT_COMMAND=prompt_command"


# For saving dotfile

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
