# A simple, colorized prompt: 
#   <user name> <working dir base name> $

# Save color codes into sane variables
blue="\e[0;34m"
red="\e[0;31m"
cyan="\e[0;36m"

# Use red for root, blue for user
if [[ $UID -eq 0 ]]; then
    fgcolor=$red
else
    fgcolor=$blue
fi  

# Complete prompt
export PS1="${fgcolor}\u ${cyan}\W ${fgcolor}\$ \e[m"

