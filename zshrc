# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

. ~/.bash_aliases
DISABLE_AUTO_TITLE=true

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow vagrant redis-cli)

source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8
export EDITOR=vim
export PATH=~/bin:~/.rbenv/shims:~/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/local/bin/git-scripts:/usr/local/share/npm/bin:/usr/sbin:/usr/bin:/sbin:/bin
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export TMUXIFIER_LAYOUT_PATH="$HOME/.tmux-layouts"
export TMUXIFIER="$HOME/projects/other/tmuxifier"
export NODE_PATH=/usr/local/lib/node_modules

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
eval "$(hub alias -s)"

[[ -s "$HOME/.private" ]] && source "$HOME/.private"
[[ -s "$TMUXIFIER/init.sh" ]] && source "$TMUXIFIER/init.sh"
[[ -s "$TMUXIFIER/tmuxifier.zsh" ]] && source "$TMUXIFIER/tmuxifier.zsh"
[[ -s "$HOME/.oracle_env" ]] && source "$HOME/.oracle_env"

return 0
