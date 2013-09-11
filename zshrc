export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="sorin"

plugins=(git rvm rails3 ruby brew bundler cloudapp heroku osx pow)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/lib/pear/bin:/usr/lib/pear/share/pear/PHP

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
