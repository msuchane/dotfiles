# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000
setopt appendhistory autocd notify
bindkey -e
# End of lines configured by zsh-newuser-install

autoload -Uz promptinit
promptinit

# Don't save duplicate entries in the history file
setopt HIST_IGNORE_ALL_DUPS

# red prompt for root, blue otherwise
if [[ $UID -eq 0 ]]
    then fgcolor="red"
    else fgcolor="blue"
fi

# See:
# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
PROMPT="%B%F{$fgcolor}%n%f %F{cyan}%2~%f%F{$fgcolor} %# %f%b"

# History search
# Doing this, only past commands matching the current line up to the current
# cursor position will be shown.
# autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
# zle -N up-line-or-beginning-search
# zle -N down-line-or-beginning-search
# [[ -n "${key[Up]}"   ]] && bindkey "${key[Up]}"   up-line-or-beginning-search
# [[ -n "${key[Down]}" ]] && bindkey "${key[Down]}" down-line-or-beginning-search

# Remove slash from $WORDCHARS. "-word-" functions will treat slash as
# a word separator.
WORDCHARS=${WORDCHARS//\//}

## These keybindings have been tested only in gnome-terminal

# Search history using Page Up / Page Down
bindkey "^[[5~" history-beginning-search-backward
bindkey "^[[6~" history-beginning-search-forward

# Home / End
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5C' forward-word
# [Ctrl-LeftArrow] - move backward one word
bindkey '^[[1;5D' backward-word

# Delete whole line on Ctrl-U instead of just deleting from cursor to Home
bindkey "^U" kill-whole-line

# Deleting word using Ctrl-Backspace
bindkey "^H" backward-delete-word

# Regular Delete
bindkey "^[[3~" delete-char


## Syntax highlighting, Fish-like. Must be placed at the end of this file.
## See https://github.com/zsh-users/zsh-syntax-highlighting
source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# For Terminix:
if [[ $TILIX_ID ]]; then
    source /etc/profile.d/vte.sh
fi

# Some configuration options for the 'less' pager.
# -R: preserve color codes as colors
# -M: display more status information about scroll position
# -i: search is case-insensitive
export LESS="-RMi"

# OPAM configuration
. ~/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true


# For Publican 1.0+

## Building
alias pubtest="publican build --langs=en-US --formats=test"
alias pubsingle="publican build --langs=en-US --formats=html-single"
alias pubhtml="publican build --langs=en-US --formats=html"
alias pubhtmls="publican build --langs=en-US --formats='html,html-single'"
alias pubpdf="publican build --langs=en-US --formats=pdf"
alias pubepub="publican build --langs=en-US --formats=epub"
alias puball="publican build --langs=en-US --formats='html-single,html,pdf'"
alias pubtxt="publican build --langs=en-US --formats=txt"

## Previewing
alias tmpsingle="xdg-open tmp/en-US/html-single/index.html"
alias tmpmulti="xdg-open tmp/en-US/html/index.html"
alias tmppdf="xdg-open tmp/en-US/pdf/*.pdf"
alias preview='test -e tmp/en-US/html-single/index.html && firefox tmp/en-US/html-single/index.html || echo '\''Build it, dude.'\'' >&2'

## Staging
alias rhstage="rhpkg publican-build --lang en-US -m'Updated'"

# Generate a new asciidoc module file
alias newdoc=~/RH/py/newdoc/newdoc.py

