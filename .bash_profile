# aliases
alias cd..="cd .."
alias l="ls -al"
alias lp="ls -p"
alias h=history

# the "kp" alias ("que pasa"), in honor of tony p.
alias kp="ps auxwww"

# bash history size
export HISTFILESIZE=1000000
export HISTSIZE=1000000

# GO config
export GITLAB_PATH=gitlab.myteksi.net/gophers/go
export GOPATH=/Users/myyk.seok/go
export GOROOT="/usr/local/Cellar/go/1.10.3/libexec" # Should remove this once appraise fixes their shit since it's no longer normal to set.
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOPATH/src/$GITLAB_PATH/scripts
source $GOPATH/src/$GITLAB_PATH/scripts/set-env.sh ci > /dev/null 2>&1 # Setting env-vars on each bash startup
alias goland='open -a "GoLand.app"'

# general path munging
export PATH=${PATH}:~/bin

# git bash completion as installed from `brew install git bash-completion`
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# https://coderwall.com/p/fasnya/add-git-branch-name-to-bash-prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Editor settings
export EDITOR="/Applications/Atom.app/Contents/MacOS/Atom -nw"

# configure my multi-line prompt
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] \W 🍕 "
export PROTO_PATH=/usr/local/protoc
export PATH=$PATH:$PROTO_PATH/bin
