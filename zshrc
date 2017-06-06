#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# load rbenv

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# load kerl and kiex

[[ -s "$KERL_DEFAULT_INSTALL_DIR/$ERLANG_VERSION/activate" ]] && source "$KERL_DEFAULT_INSTALL_DIR/$ERLANG_VERSION/activate"
[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"

# load various variables
[[ -s "$HOME/.private" ]] && source "$HOME/.private"
[[ -s "$TMUXIFIER/init.sh" ]] && source "$TMUXIFIER/init.sh"
[[ -s "$TMUXIFIER/tmuxifier.zsh" ]] && source "$TMUXIFIER/tmuxifier.zsh"

# load aliases

[[ -s "$HOME/.aliases" ]] && source "$HOME/.aliases"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
