#Git branch in promt.

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

cyan=$(tput setaf 6)
reset=$(tput sgr0)
export PS1=":\w\[$cyan\]\$(parse_git_branch)\[$reset\] \$ "


# Aliases list by @mathiasbynens
# navigation
alias ..="cd .."

# shortcuts
alias dl="cd ~/Downloads"
alias g="git"

# list files
alias ls="ls -laF -G"

# Get OS X Software Updates, and update installed Homebrew
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; brew doctor'

#Recursively delete `.DS_Store files`
alias cleanup="find . -type f -name '*.DS_Store' -delete"

# IP`s
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"
