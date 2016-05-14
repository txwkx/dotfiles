#Git branch in promt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

cyan=$(tput setaf 6)
reset=$(tput sgr0)
export PS1=":\w\[$cyan\]\$(parse_git_branch)\[$reset\] \$ "


#ALIAS list
alias gobrew='brew update; brew upgrade; brew cleanup; brew doctor'
