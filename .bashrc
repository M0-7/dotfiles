#
# .bashrc
#

#Variables
export HISTCONTROL=ignoredups
export HISTFILESIZE=10000
export HISTSIZE=500
export EDITOR=nvim
export VISUAL=nvim

#Enabling features
source /usr/share/doc/pkgfile/command-not-found.bash
shopt -s autocd
shopt -s histappend
shopt -s checkwinsize
source /usr/share/bash-completion/bash_completion

#Alias
alias ip="ip --color=auto"
alias cat="bat --style=grid"
alias ls="eza --group-directories-first"
alias ll="eza --long --group-directories-first"
alias grep='grep --color=auto'
alias vim="nvim"
alias sudo="sudo "

#Bash prompt
export PS1="\[\e[01;32m\]\u\[\e[m\]\[\e[01;32m\]@\[\e[m\]\[\e[01;32m\]\h\[\e[m\] \[\e[01;34m\]\W\[\e[m\] \\$ "
