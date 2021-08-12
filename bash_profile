# Loads configuration in .bashrc
if [ -f ~/.bashrc ];
  then
  source ~/.bashrc
fi

# Loads aliases configuration if available
if [ -f ~/.aliases ];
  then
  source ~/.aliases
fi

# Loads functions configuration if available
if [ -f ~/.functions ];
  then
  source ~/.functions
fi

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/python:$PATH
export PATH=/home/james/.local/bin:$PATH

PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
. "$HOME/.cargo/env"
