# aliases
alias cd..="cd .."
alias l="ls -al"
alias lp="ls -p"
alias h=history

# the "kp" alias ("que pasa"), in honor of tony p.
alias kp="ps auxwww"

# GO config
# TODO

# general path munging
PATH=${PATH}:~/bin
PATH=${PATH}:/usr/local/bin

# configure my multi-line prompt
PS1="\u@\h 🍕 \W : "
