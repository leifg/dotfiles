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

# load various variables
[[ -s "$HOME/dotfiles/base16-shell/base16-default.dark.sh" ]] && source "$HOME/dotfiles/base16-shell/base16-default.dark.sh"
[[ -s "$HOME/.private" ]] && source "$HOME/.private"
[[ -s "$TMUXIFIER/init.sh" ]] && source "$TMUXIFIER/init.sh"
[[ -s "$TMUXIFIER/tmuxifier.zsh" ]] && source "$TMUXIFIER/tmuxifier.zsh"
[[ -s "$HOME/.oracle_env" ]] && source "$HOME/.oracle_env"
