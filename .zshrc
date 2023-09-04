export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode auto
export WEZTERM_CONFIG_FILE="$HOME/.config/wezterm/wezterm.lua"

export ZSH_THEME="spaceship"

export SPACESHIP_CONFIG="$HOME/.config/spaceship/.spaceshiprc.zsh"

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  aws
  fzf
  python
  pyenv
  poetry
  virtualenv
  brew
  docker
  docker-compose
  gem
  git
  github
  golang
  npm
  node
  rbenv
  ruby
)

export ZSH_COMPDUMP=$ZSH/cache/compdump/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh

export _Z_DATA=$HOME/.cache/z/.z
. ~/z.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Aliases
alias :q="exit"
alias vim="nvim"
alias ports="sudo lsof -i -P -n | grep LISTEN"
alias edit="nvim ~/.zshrc"
alias update="source ~/.zshrc"
alias here="ls -la | grep $1"

# Git Aliases
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

# Goose Migrations // TODO: move this into make file for project
alias ms="goose postgres \"$(<.env.db)\" status"
alias mc="goose -dir ./migrations postgres \"$(<.env.db)\" create $1 $2"
alias mup="goose -dir ./migrations postgres \"$(<.env.db)\" up"

bindkey -s '^f' 'fzf\n'

export PATH="$HOME/.flutter/flutter/bin:$PATH"
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

source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/aliyeysides/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
