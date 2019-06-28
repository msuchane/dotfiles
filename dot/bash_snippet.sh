# A simple, colorized prompt: 
#   <user name> <working dir base name> $

# Use red for root, blue for user
if [[ $UID -eq 0 ]]; then
    export PS1="\[\e[1;31m\]\u\[\e[m\] \[\e[1;36m\]\W\[\e[m\] \[\e[1;31m\]\\$\[\e[m\] "
else
    export PS1="\[\e[1;34m\]\u\[\e[m\] \[\e[1;36m\]\W\[\e[m\] \[\e[1;34m\]\\$\[\e[m\] "
fi
