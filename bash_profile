export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/python:$PATH

PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias python=python2
alias badssh="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
