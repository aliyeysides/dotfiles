zmodload zsh/zprof

export ZSH_COMPDUMP=$ZSH/cache/compdump/.zcompdump-$HOST

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

bindkey -s '^f' 'fzf\n'

export NVM_DIR=~/.nvm
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

fastfetch

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

zprof > /tmp/profile 

