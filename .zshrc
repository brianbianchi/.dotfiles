export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(web-search)
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

alias zshconfig="nvim ~/.zshrc"
alias jn="jupyter notebook"
alias dlt="networkquality"
alias uuid="uuidgen"
alias jwt='jq -R "split(\".\") | .[0:2] | map(@base64d) | map(fromjson)" <<<'

# pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
