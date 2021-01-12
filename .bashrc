source ~/.profile

alias ls='ls --color'
alias v='nvim'

# Let there be color in grep!
export GREP_OPTIONS=' — color=auto'

# Set Vim as my default editor
export EDITOR='vim'

# Golang
export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin