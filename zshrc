export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="sorin"

plugins=(git rvm rails3 ruby brew bundler cloudapp heroku osx pow)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# brew
export PATH="/usr/local/bin:$PATH"

# PHP binaries
export PATH="$PATH:/usr/lib/pear/bin:/usr/lib/pear/share/pear/PHP

eval "$(rbenv init -)"
