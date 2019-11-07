# A simple, colorized prompt: 
#   <user name>@<host name> <working dir base name> $

# Use red for root, blue for user
if [[ $UID -eq 0 ]]; then
    fgcolor="\[\e[1;31m\]"
else
    fgcolor="\[\e[1;34m\]"
fi

export PS1="${fgcolor}\u\[\e[0;37m\]@${fgcolor}\h\[\e[m\] \[\e[1;36m\]\W\[\e[m\] ${fgcolor}\\$\[\e[m\] "
