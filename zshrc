export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="sorin"

plugins=(git rvm rails ruby brew cloudapp heroku osx pow)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# brew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# PHP binaries
export PATH="$(brew --prefix php53)/bin:$PATH"

eval "$(rbenv init -)"
