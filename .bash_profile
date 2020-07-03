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

# Productivity shortcuts


# >>> JVM installed by coursier >>>
export JAVA_HOME="/home/myyk/.cache/coursier/jvm/adopt@1.8.0-252"
export PATH="$PATH:/home/myyk/.cache/coursier/jvm/adopt@1.8.0-252/bin"
# <<< JVM installed by coursier <<<

# >>> coursier install directory >>>
export PATH="$PATH:/home/myyk/.local/share/coursier/bin"
# <<< coursier install directory <<<
