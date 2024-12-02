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
shopt -s cdspell
shopt -s cmdhist
shopt -s histappend
shopt -s checkwinsize
source /usr/share/bash-completion/bash_completion

#Alias
alias ip="ip --color=auto"
alias cat="bat"
alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --all --long --group-directories-first"
alias grep='grep --color=auto'
alias vim="nvim"
alias sudo="sudo "
alias dots="cd ~/Documents/git/dotfiles"
alias neofetch="fastfetch"
alias cd="z"
# Zoxide
eval "$(zoxide init bash)"

#Bash prompt
#export PS1="\[\e[34m\]\w\[\e[m\] \[\e[32m\]\[\e[m\] "
if (env | grep -Fq 'DISTROBOX'); then
    export PS1="📦 \[\e[01;32m\]\u\[\e[m\]\[\e[01;32m\]@\[\e[m\]\[\e[01;32m\]\h\[\e[m\] \[\e[01;34m\]\W\[\e[m\] \\$ "
else
    export PS1="\[\e[01;32m\]\u\[\e[m\]\[\e[01;32m\]@\[\e[m\]\[\e[01;32m\]\h\[\e[m\] \[\e[01;34m\]\W\[\e[m\] \\$ "
fi
