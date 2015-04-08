# Aliases
alias gs="git status"
alias ga="git add"
alias gaa="git add -A"
alias gd="git diff"
alias gc="git commit"
alias ls="ls --color=auto"
alias gdn="git diff --name-status"
alias gl="git log --graph --full-history --all --color --decorate=short"
alias g="git"

# opens first .sln file in current directory in Visual Studio
function vs { /c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio\ 12.0/Common7/IDE/devenv `ls *.sln | sort -n | head -1` & disown; }

# e.g.: git-live-patch develop..master ~/live-patch-2015-01-01
function git-live-patch { cp --parents `git diff-tree -r --name-only --diff-filter=ACMRT "$1"` "$2"; }

# vi-like commands for bash
set -o vi

# git autocomplete for 'g' as well
complete -o default -o nospace -F _git g

