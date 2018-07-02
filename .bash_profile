# aliases
alias cd..="cd .."
alias l="ls -al"
alias lp="ls -p"
alias h=history

# the "kp" alias ("que pasa"), in honor of tony p.
alias kp="ps auxwww"

# bash history size
HISTFILESIZE=1000000
HISTSIZE=1000000

# GO config
GITLAB_PATH=gitlab.myteksi.net/gophers/go
GOROOT=/usr/local/bin/go
GOPATH=/Users/myyk.seok/go
PATH=$PATH:$GOROOT/bin:$GOPATH/bin
PATH=$PATH:$GOPATH/src/$GITLAB_PATH/scripts
source $GOPATH/src/$GITLAB_PATH/scripts/set-env.sh ci > /dev/null 2>&1 # Setting env-vars on each bash startup

# general path munging
PATH=${PATH}:~/bin
PATH=${PATH}:/usr/local/bin

# git bash completion as installed from `brew install git bash-completion`
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# https://coderwall.com/p/fasnya/add-git-branch-name-to-bash-prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# configure my multi-line prompt
PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] \W 🍕 "
