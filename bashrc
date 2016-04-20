export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;37m\]>\[\033[01;34m\] \w\[\033[01;32m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '

# put Node in PATH
if [ -d "/data/opt/node/bin" ] ; then
    export PATH="$PATH:/data/opt/node/bin" 
fi

if [ -f /data/opt/z/z.sh ]; then
    _Z_CMD=j
    . /data/opt/z/z.sh
fi

if [ -f ~/dotfiles/bash/git-completion.bash ]; then
  . ~/dotfiles/bash/git-completion.bash
fi

if [ -f ~/dotfiles/bash/bash_aliases ]; then
    . ~/dotfiles/bash/bash_aliases
fi

if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

if [ -f ~/dotfiles/bash/sensible_bash ]; then
	. ~/dotfiles/bash/sensible_bash
fi

if [ -f ~/dotfiles/bash/timetrap-autocomplete.bash ]; then
	. ~/dotfiles/bash/timetrap-autocomplete.bash
fi
