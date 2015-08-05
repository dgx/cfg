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
alias cpan="cpanm"
alias clip="xclip -sel clip"

# vi-like commands for bash
set -o vi

# git autocomplete for 'g' as well
source /usr/share/bash-completion/completions/git
complete -o default -o nospace -F _git g

eval `dircolors ~/.dir_colors`

export PERL_PREFER_CPAN_CLIENT=cpanm

# get current git branch name
function git_branch {
    export gitbranch=[$(git rev-parse --abbrev-ref HEAD 2>/dev/null)]
    if [ "$?" -ne 0 ]
        then gitbranch=
    fi
    if [[ "${gitbranch}" == "[]" ]]
        then gitbranch=
    fi
}

# set usercolor based on whether we are running with Admin privs
function user_color {
    id | grep "Admin" > /dev/null
    RETVAL=$?
    if [[ $RETVAL == 0 ]]; then
        usercolor="[0;35m";
    else
        usercolor="[0;32m";
    fi
}

# set TTYNAME
function ttyname() { export TTYNAME=$@; }
 
# Set prompt and window title
inputcolor='[1;34m'
cwdcolor='[0;34m'
gitcolor='[1;31m'
user_color
 
# Setup for window title
export TTYNAME=$$
function settitle() {
    p=$(pwd);
    let l=${#p}-25
    if [ "$l" -gt "0" ]; then
        p=..${p:${l}}
    fi
    t="$TTYNAME $p"
    echo -ne "\e]2;$t\a\e]1;$t\a";
}
                 
PROMPT_COMMAND='settitle; git_branch; history -a;'
export PS1='\[\e${usercolor}\][\u]\[\e${gitcolor}\]${gitbranch}\[\e${cwdcolor}\][$PWD]\[\e${inputcolor}\] $ '
