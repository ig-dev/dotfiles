# Find aliases when using sudo
alias sudo='sudo ' # Trailing space tells bash that the command that follows can be an alias.

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
alias gpss='git config --global push.default current; git push -u'
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

# ----------------------
# GVIM
# ----------------------

alias g="gvim --remote "" $1 > /dev/null 2>&1"
alias gg="sudo -E gvim --remote "" $1  > /dev/null 2>&1"


# ----------------------
# Colors
# ----------------------

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# ----------------------
# Directory navigation
# ----------------------
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../.."
alias cd......="cd ../../../../.."
