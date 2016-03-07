if [ -f /data/opt/z/z.sh ]; then
    _Z_CMD=j
    . /data/opt/z/z.sh
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;37m\]>\[\033[01;34m\] \w\[\033[01;32m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '

if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

if [ -f ~/dotfiles/sensible_bash ]; then
	. ~/dotfiles/sensible_bash
fi
