# A simple, colorized prompt: 
#   <user name> <working dir base name> $

# Save color codes into sane variables
blue="\e[1;34m"
red="\e[1;31m"
cyan="\e[1;36m"

# Use red for root, blue for user
if [[ $UID -eq 0 ]]; then
    fgcolor=$red
else
    fgcolor=$blue
fi  

# Complete prompt
export PS1="${fgcolor}\u ${cyan}\W ${fgcolor}\$ \e[m"

