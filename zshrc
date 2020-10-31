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

export AWS_REGION=us-west-2

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# install via npm install --global pure-prompt
autoload -U promptinit; promptinit
prompt pure
zstyle :prompt:pure:prompt:success color 'green'

# load various variables
[[ -s "$HOME/.private" ]] && source "$HOME/.private"
[[ -s "$TMUXIFIER/init.sh" ]] && source "$TMUXIFIER/init.sh"
[[ -s "$TMUXIFIER/tmuxifier.zsh" ]] && source "$TMUXIFIER/tmuxifier.zsh"
[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"

# load aliases

[[ -s "$HOME/.zsh/aliases" ]] && source "$HOME/.zsh/aliases"

# load keybindings

[[ -s "$HOME/.zsh/keybindings" ]] && source "$HOME/.zsh/keybindings"

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

# load rbenv

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# load nvm

[[ -s "/usr/local/opt/nvm/etc/bash_completion" ]] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# load gh

if which gh > /dev/null; then eval "$(gh completion -s zsh)"; fi

# load nodenv

eval "$(nodenv init -)"