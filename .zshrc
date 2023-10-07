zmodload zsh/zprof

export PATH=$HOME/bin:/usr/local/bin:$PATH

export WEZTERM_CONFIG_FILE="$HOME/.config/wezterm/wezterm.lua"

export ZSH_COMPDUMP=$ZSH/cache/compdump/.zcompdump-$HOST

export _Z_DATA=$HOME/.cache/z/.z
. ~/z.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done

compinit -C

# Aliases
alias :q="exit"
alias vim="nvim"
alias ports="sudo lsof -i -P -n | grep LISTEN"
alias edit="nvim ~/.zshrc"
alias update="source ~/.zshrc"
alias here="ls -la | grep $1"

# Git Aliases
alias ga="git add $1"
alias gd="git diff"
alias gs="git status"
alias gcb="git checkout -b $1"
alias gco="git checkout $1"
alias gcim="git commit -m $1"
alias gba="git branch -a"
alias gbag="git branch -a | grep $1"
alias gsu="git --set-upstream origin $1"
alias gpush="git push"
alias gpull="git pull"
alias glog="git log --oneline --graph"
alias glogs="git log --stat"

bindkey -s '^f' 'fzf\n'

export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/usr/local/go/bin/go:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export PIPENV_VENV_IN_PROJECT=1

eval "$(rbenv init -)"

export PATH="/usr/local/opt/sqlite/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/aliyeysides/miniconda3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "/Users/aliyeysides/miniconda3/etc/profile.d/conda.sh" ]; then
    . "/Users/aliyeysides/miniconda3/etc/profile.d/conda.sh"
  else
    export PATH="/Users/aliyeysides/miniconda3/bin:$PATH"
  fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

lazy_load_nvm() {
  unset -f node nvm
  export NVM_DIR=~/.nvm
  [[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"
}

node() {
  lazy_load_nvm
  node $@
}

nvm() {
  lazy_load_nvm
  nvm $@
}

# pnpm
export PNPM_HOME="/Users/aliyeysides/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
zprof > /tmp/profile 
