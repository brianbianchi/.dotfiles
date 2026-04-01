export LANG=en_US.UTF-8

# Prompt
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/theme.toml)"

# Plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
bindkey '^ ' autosuggest-accept

# Auto-source .env file when entering a directory
_load_dotenv() {
  [[ -f .env ]] && source .env
}
add-zsh-hook chpwd _load_dotenv

# Completions — cache, only rebuild if older than 24h
autoload -Uz compinit add-zsh-hook
if [[ -n ${HOME}/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

# Aliases
alias zshconfig="nvim ~/.zshrc"
alias jn="jupyter notebook"
alias dlt="networkquality"
alias uuid="uuidgen"
alias jwt='jq -R "split(\".\") | .[0:2] | map(@base64d) | map(fromjson)" <<<'

# Lazy-load pyenv — shims on PATH immediately, full init deferred
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PYENV_ROOT/shims:$PATH"

pyenv() {
  unfunction pyenv
  eval "$(command pyenv init - zsh)"
  pyenv "$@"
}

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
