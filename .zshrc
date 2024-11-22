# Path to your oh-my-zsh installation.
export ZSH="/Users/brianbianchi/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
plugins=(
    dotenv
    tmux
    web-search
)

source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=en_US.UTF-8
# export PATH="/opt/homebrew/anaconda3/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias v="nvim"
alias gac="git add . && git commit -m "
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
alias jn="jupyter notebook"