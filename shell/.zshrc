# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=200
SAVEHIST=200
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arya/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt HIST_IGNORE_DUPS

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias shutdown='shutdown now'
alias scratch='urxvt -name scratch'

PROMPT=$'\n%F{green}%B%n%b%f : %F{magenta}%B%~%b%f\n➔ '

preexec () { print -Pn "\e]0;urxvt : $1\a" }
