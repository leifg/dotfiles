#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export ERL_AFLAGS="-kernel shell_history enabled"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# load various variables
[[ -s "$HOME/.private" ]] && source "$HOME/.private"
[[ -s "$TMUXIFIER/init.sh" ]] && source "$TMUXIFIER/init.sh"
[[ -s "$TMUXIFIER/tmuxifier.zsh" ]] && source "$TMUXIFIER/tmuxifier.zsh"

# load aliases

[[ -s "$HOME/.aliases" ]] && source "$HOME/.aliases"

# load rbenv

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# load nvm

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# load gh

if which gh > /dev/null; then eval "$(gh completion -s zsh)"; fi

