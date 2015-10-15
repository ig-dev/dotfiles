# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gb='git branch'
alias gbd='git branch -d '
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcod='git checkout develop'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias gl='git log'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge'
alias gpl='git pull'
alias gps='git push'
alias grb='git rebase'
alias grm='git rm'
alias grs='git reset'
alias gss='git status -s'
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'
alias grset='git remote set-url origin'
alias gradd='git remote add origin'
alias gstat='git diff --shortstat `git hash-object -t tree /dev/null`'
alias gstats='git diff --stat `git hash-object -t tree /dev/null`'

function gcam() {
	if [ -n "$1" ]
	then
		git add -A;
		git commit -m "$1";
	fi
}

# Other aliases
alias gvim='gvim --remote "" $1 > /dev/null 2>&1'

# Other things
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;37m\]>\[\033[01;34m\] \w\[\033[01;32m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
